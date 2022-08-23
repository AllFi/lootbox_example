## Prerequisites
* Install foundry: https://book.getfoundry.sh/getting-started/installation

## Install dependencies
```
forge install
```

## Build
```
forge build
```

## Test
```
forge test
```

## Deploy and verify contract
1. Replace name, symbol, baseURI in `script/LootBoxNFT.s.sol` with actual values.

2. Create and fill .env file with content:
```
RPC_URL=
PRIVATE_KEY=
ETHERSCAN_KEY=
```
3. Deploy and verify contract:
```
source .env
forge script script/LootBoxNFT.s.sol:LootBoxNFTScript --rpc-url $RPC_URL  --private-key $PRIVATE_KEY --broadcast --verify --etherscan-api-key $ETHERSCAN_KEY -vvvv
```

## Mint
```
cast send --private-key $PRIVATE_KEY --rpc-url $RPC_URL --from {OWNER_ADDRESS} {CONTRACT_ADDRESS} "mintTo(address)(uint256)" {RECIPIENT_ADDRESS}
```

## Change Base URI
```
cast send --private-key $PRIVATE_KEY --rpc-url $RPC_URL --from {OWNER_ADDRESS} {CONTRACT_ADDRESS} "setBaseURI(string memory)()" {NEW_BASE_URI}
```
