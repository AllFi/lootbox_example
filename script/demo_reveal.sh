#!/bin/bash

set -e

source .env

forge script script/scripts/DemoReveal.s.sol:DemoReveal --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast
