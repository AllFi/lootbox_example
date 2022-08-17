// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import "lib/openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract LootBoxNFT is ERC721, ERC721Enumerable, Ownable {
    uint256 public currentTokenId;
    string private baseURI;

    constructor(string memory _name, string memory _symbol, string memory _baseUri) ERC721(_name, _symbol) {
        baseURI = _baseUri;
    }

    function mintTo(address recipient) public onlyOwner returns (uint256) {
        uint256 newItemId = ++currentTokenId;
        _safeMint(recipient, newItemId);
        return newItemId;
    }

    function setBaseURI(string memory _baseUri) public onlyOwner {
        baseURI = _baseUri;
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return baseURI;
    }

    // required by ERC721Enumerable

    function _beforeTokenTransfer(address from, address to, uint256 tokenId)
        internal
        override (ERC721, ERC721Enumerable)
    {
        super._beforeTokenTransfer(from, to, tokenId);
    }

    function supportsInterface(bytes4 interfaceId) public view override (ERC721, ERC721Enumerable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}
