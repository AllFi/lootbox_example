// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Test.sol";
import "../src/LootBoxNFT.sol";

contract LootBoxNFTTest is Test {
    LootBoxNFT public nft;
    function setUp() public {
       nft = new LootBoxNFT("Loot Box NFT", "LBN", "https://ipfs.io/ipfs/one/");
    }

    function testSetBaseURI() public {
        address recipientAddress = vm.addr(1234);
        uint256 tokenId = nft.mintTo(recipientAddress);
        assertEq(nft.tokenURI(tokenId), "https://ipfs.io/ipfs/one/1");
        nft.setBaseURI("https://ipfs.io/ipfs/two/");
        assertEq(nft.tokenURI(tokenId), "https://ipfs.io/ipfs/two/1");
    }

    // function testSetNumber(uint256 x) public {
    //     counter.setNumber(x);
    //     assertEq(counter.number(), x);
    // }
}
