// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";
import "../../src/LootBoxNFT.sol";
import "../../script/scripts/Env.s.sol";

contract DemoReveal is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        LootBoxNFT nft = LootBoxNFT(contractAddress);
        nft.setTokenURI(1, "https://ipfs.io/ipfs/QmVDPUYD5bCzbjydHSZk1DqFG9f2GuoP8HUES9c2mRdSRG/1");
        //nft.setTokenURI(2, "https://ipfs.io/ipfs/QmVDPUYD5bCzbjydHSZk1DqFG9f2GuoP8HUES9c2mRdSRG/2");
        vm.stopBroadcast();
    }
}
