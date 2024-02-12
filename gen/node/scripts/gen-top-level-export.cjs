const fs = require('fs').promises;
const path = require('path');

async function readDirectory(directoryPath, srcBasePath, namespaceImports = {}) {
    const items = await fs.readdir(directoryPath, { withFileTypes: true });

    for (let item of items) {
        if (item.isDirectory()) {
            // Recursively process subdirectories
            await readDirectory(path.join(directoryPath, item.name), srcBasePath, namespaceImports);
        } else if (item.name.endsWith('.ts') && !item.name.startsWith('index')) {
            // Derive the simplified alias from the file name
            const moduleName = item.name.replace('.ts', '');
            const namespace = path.relative(srcBasePath, directoryPath).split(path.sep).join('_');
            const importAlias = `${moduleName}`;  // Simplified alias

            // Initialize the namespace array if it doesn't exist
            if (!namespaceImports[namespace]) {
                namespaceImports[namespace] = [];
            }

            const relativePath = path.relative(srcBasePath, path.join(directoryPath, item.name)).replace('.ts', '.js');
            namespaceImports[namespace].push(`import * as ${importAlias} from './${relativePath.replace(/\\/g, '/')}';\n`);
        }
    }

    return namespaceImports;
}

async function generateIndexContent(directoryPath, srcBasePath) {
    const namespaceImports = await readDirectory(directoryPath, srcBasePath);
    let imports = '';
    let exports = '';

    for (const [namespace, importStatements] of Object.entries(namespaceImports)) {
        // Concatenate all import statements for this namespace
        imports += importStatements.join('');

        // Generate the export statement using the spread operator for each import alias
        const exportAliases = importStatements.map(statement => {
            const aliasMatch = statement.match(/as (\w+)/);
            return aliasMatch ? `...${aliasMatch[1]}` : '';
        }).filter(alias => alias);

        const namespaceName = namespace.split('_').pop();
        exports += `export const ${namespaceName} = { ${exportAliases.join(', ')} };\n`;
    }

    return `${imports}\n${exports}`;
}

(async () => {
    const relativeDirectoryPath = process.argv[2];
    if (!relativeDirectoryPath) {
        console.error('No directory path provided. Usage: node script.js [relativePath]');
        process.exit(1);
    }

    const directoryPath = path.join(process.cwd(), relativeDirectoryPath);
    const srcPath = path.join(process.cwd(), 'src');
    const indexPath = path.join(srcPath, 'index.ts');

    const indexContent = await generateIndexContent(directoryPath, srcPath);
    await fs.writeFile(indexPath, indexContent);
    console.log('index.ts generated successfully in:', srcPath);
})();
