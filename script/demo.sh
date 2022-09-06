#!/bin/bash

set -e

source .env

forge script script/scripts/Demo.s.sol:Demo --rpc-url $RPC_URL  --private-key $PRIVATE_KEY --broadcast --verify --etherscan-api-key $ETHERSCAN_KEY -vvvv
