// SPDX-License-Identifier: MIT
// Creators: Chiru Labs

pragma solidity ^0.8.4;

abstract contract CustomStartTokenIdMock {
    
    uint256 immutable public startTokenId;

    constructor (uint256 startTokenId_) { 
        startTokenId = startTokenId_;
    }
}