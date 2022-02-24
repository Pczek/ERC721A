// SPDX-License-Identifier: MIT
// Creators: Chiru Labs

pragma solidity ^0.8.4;

import '../extensions/ERC721AOwnersExplicit.sol';
import './CustomStartTokenIdMock.sol';

contract ERC721AOwnersExplicitMock is CustomStartTokenIdMock, ERC721AOwnersExplicit {

    constructor(string memory name_, string memory symbol_, uint256 startTokenId_) 
    CustomStartTokenIdMock(startTokenId_)
    ERC721A(name_, symbol_) {}

    function _startTokenId() internal view override returns (uint256) {
        return startTokenId;
    }

    function safeMint(address to, uint256 quantity) public {
        _safeMint(to, quantity);
    }

    function setOwnersExplicit(uint256 quantity) public {
        _setOwnersExplicit(quantity);
    }

    function getOwnershipAt(uint256 tokenId) public view returns (TokenOwnership memory) {
        return _ownerships[tokenId];
    }
}
