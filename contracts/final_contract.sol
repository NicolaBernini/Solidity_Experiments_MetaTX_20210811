// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./generics.sol"

// Simulates the final contract the End User wants to call via Meta TX 

contract A is IA {
    event EA_FromIP(uint256 content);
    event EA_FromMNN(uint256 content);
    
    address immutable ip;
    address immutable mnn;
    
    constructor(address _ip, address _mnn) {
        ip = _ip;
        mnn = _mnn;
    }
    
    function call_me(uint256 x) override external {
        if(msg.sender == ip) {
            emit EA_FromIP(x);
        }
        if(msg.sender == mnn) {
            emit EA_FromMNN(x); 
        }
    }
}





