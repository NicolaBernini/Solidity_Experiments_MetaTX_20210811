// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./generics.sol"

// Simulates Meta Network Node

// NOTE: Deploy this contract first
contract MNN is IMNN {
    
    event MNN_MetaTX_Sent(address ip, s_meta_tx meta_tx); 
    
    function submit(address ip, s_meta_tx memory meta_tx) override external {
        IP(ip).rec_meta_tx(meta_tx);
        emit MNN_MetaTX_Sent(ip, meta_tx);
    }
}



