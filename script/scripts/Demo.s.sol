// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";
import "../../src/LootBoxNFT.sol";
import "../../script/scripts/Env.s.sol";

contract Demo is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        LootBoxNFT nft = new LootBoxNFT("Loot Box NFT", "LBN", "https://ipfs.io/ipfs/Qmc5jvgUp1f2JAm2Ataa3gqq8njXa5Sygk18kqXwRz7Kw2?filename=contract.json");
        nft.mint(receiverAddress, "https://ipfs.io/ipfs/QmbJZD7g8FuqGZMhPrFq6xoiQu6ugfq75dNHVZF8TcSBaU/1");
        nft.mint(receiverAddress, "https://ipfs.io/ipfs/QmbJZD7g8FuqGZMhPrFq6xoiQu6ugfq75dNHVZF8TcSBaU/2");
        vm.stopBroadcast();
    }
}
