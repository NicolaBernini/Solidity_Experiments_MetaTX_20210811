// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./generics.sol"

// Simulates the End User

contract EOA {
    function submit(address mnn, address ip, address target, uint call_type, uint method_id, uint val) external {
        s_meta_tx memory meta_tx = s_meta_tx({
            target: target, 
            call_type: call_type,
            method_id: method_id,
            val: val
        }); 
        
        IMNN(mnn).submit(ip, meta_tx);
    }
}




