to=$1
value=$2

echo "to=$to"
echo "value=$value"
gaiacli tx send $to $value --from=cosmos1z7jw2deueg37nd6v3flmn4wy2v3nhz55wyjqgk --chain-id=testing

