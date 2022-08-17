// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/LootBoxNFT.sol";

contract LootBoxNFTScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        LootBoxNFT nft = new LootBoxNFT("Loot Box NFT", "LBN", "https://ipfs.io/ipfs/QmcJM5ipXEQ86CERkeSAwpiDCbpFQR82bDqE8VZGmfDhfv/");
        vm.stopBroadcast();
    }
}
