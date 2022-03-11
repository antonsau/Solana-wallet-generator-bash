#!/bin/sh
echo "=====================SOLANA WALLET GENERATOR====================="
sleep 3
new_line='======================WALLET======================'

solana config set --url https://api.mainnet-beta.solana.com

COUNTER=0
for OUTPUT in $(seq 100)
do
    solana-keygen new --no-bip39-passphrase --no-outfile >> keys.txt
    let COUNTER++
    printf "WALLET %d CREATED\n" $COUNTER
    sleep 1

done

printf "WALLETS GENERATED: %d\n" $COUNTER