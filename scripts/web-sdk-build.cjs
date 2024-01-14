const fs = require('fs');
const path = require('path');

// Get the directory path from the command line arguments
const relativeDirectoryPath = process.argv[2];
if (!relativeDirectoryPath) {
    console.error('No directory path provided. Usage: node script.js [relativePath]');
    process.exit(1);
}

const directoryPath = path.join(process.cwd(), relativeDirectoryPath);
const srcPath = path.join(process.cwd(), 'src');
const indexPath = path.join(srcPath, 'index.ts');
let indexContent = '';

fs.readdir(directoryPath, function (err, files) {
    if (err) {
        console.log('Error getting directory information.');
        return;
    }

    files.forEach(function (file) {
        if (file.endsWith('.ts') && file !== 'index.ts') {
            const relativePath = path.relative(srcPath, path.join(directoryPath, file));
            const exportPath = `./${relativePath.replace('.ts', '')}`;
            indexContent += `export * from '${exportPath.replace(/\\/g, '/')}';\n`;
        }
    });

    fs.writeFileSync(indexPath, indexContent);
    console.log('index.ts generated successfully.');
});
