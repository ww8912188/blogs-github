#!/bin/bash
ID=`gaiacli status | jq -r ".node_info.id"`
SEEDS="$ID@127.0.0.1:26657"
COSMOS_PATH=/data1/validator
VALACC=`gaiad tendermint show-validator --home=$COSMOS_PATH/node0`

echo $VALACC

#sed -i "/seeds = ""/c seeds=\"$SEEDS\"" test.log
sed -i "/seeds = ""/c seeds=\"$SEEDS\"" node1/config/config.toml

# node1
gaiacli tx staking create-validator \
  --amount=1000000stake \
  --pubkey=$VALACC \
  --moniker=node1 \
  --chain-id=testing \
  --commission-rate="0.10" \
  --commission-max-rate="0.20" \
  --commission-max-change-rate="0.01" \
  --min-self-delegation="100000" \
  --gas=200000 \
  --gas-prices="0.025stake" \
  --from=cosmos1wpw2nrq850mwgrhteh3jwc2g7w9led2huhck90

