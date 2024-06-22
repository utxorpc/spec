.PHONE: all


all:
	buf generate proto
	find gen/python/utxorpc_spec -type f -exec sed -i '' 's@from utxorpc@from utxorpc_spec.utxorpc@g' {} \;
