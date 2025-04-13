.PHONE: all


all:
	buf generate proto
	find gen/python/utxorpc_spec -type f -exec sed -i '' 's@from utxorpc@from utxorpc_spec.utxorpc@g' {} \;
	mkdir -p gen/typebox/src
	cd gen/jsonschema/schema && npx @paima/schema2typebox --protobuf -i **/*.jsonschema.json -o ../../typebox/src/index.ts
