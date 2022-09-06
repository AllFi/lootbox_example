// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Test.sol";
import "../src/LootBoxNFT.sol";

contract LootBoxNFTTest is Test {
    LootBoxNFT public nft;
    function setUp() public {
       nft = new LootBoxNFT("Loot Box NFT", "LBN", "https://ipfs.io/ipfs/Qmc5jvgUp1f2JAm2Ataa3gqq8njXa5Sygk18kqXwRz7Kw2?filename=contract.json");
    }

    function testSetBaseURI() public {
        address recipientAddress = vm.addr(1234);
        uint256 tokenId = nft.mint(recipientAddress, "https://ipfs.io/ipfs/one/1");
        assertEq(nft.tokenURI(tokenId), "https://ipfs.io/ipfs/one/1");
        nft.setTokenURI(tokenId, "https://ipfs.io/ipfs/two/1");
        assertEq(nft.tokenURI(tokenId), "https://ipfs.io/ipfs/two/1");
    }
}
