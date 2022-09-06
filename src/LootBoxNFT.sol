// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import "lib/openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "lib/openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract LootBoxNFT is ERC721URIStorage, Ownable {
    uint256 public currentTokenId;
    string private contractUri;

    constructor(string memory _name, string memory _symbol, string memory _contractURI) ERC721(_name, _symbol) {
        contractUri = _contractURI;
    }

    function contractURI() public view returns (string memory) {
        return contractUri;
    }

    function mint(address recipient, string memory _tokenURI) public onlyOwner returns (uint256) {
        uint256 newItemId = ++currentTokenId;
        _safeMint(recipient, newItemId);
        _setTokenURI(newItemId, _tokenURI);
        return newItemId;
    }

    function setTokenURI(uint256 tokenId, string memory _tokenURI) external {
        _setTokenURI(tokenId, _tokenURI);
    }

    // // required by ERC721Enumerable

    // function _beforeTokenTransfer(address from, address to, uint256 tokenId)
    //     internal
    //     override (ERC721, ERC721Enumerable)
    // {
    //     super._beforeTokenTransfer(from, to, tokenId);
    // }

    // function supportsInterface(bytes4 interfaceId) public view override (ERC721, ERC721Enumerable) returns (bool) {
    //     return super.supportsInterface(interfaceId);
    // }
}
