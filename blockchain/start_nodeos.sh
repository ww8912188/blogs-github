nodeos --data-dir /opt/eosio/bin/data-dir -e -p eosio --http-validate-host=false --verbose-http-errors --plugin eosio::producer_plugin --plugin eosio::producer_api_plugin  --plugin eosio::chain_api_plugin --plugin eosio::history_api_plugin --plugin eosio::http_plugin --access-control-allow-origin='*' --contracts-console --http-server-address=0.0.0.0:8887
