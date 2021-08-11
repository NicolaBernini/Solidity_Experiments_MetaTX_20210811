// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./generics.sol"

// Identity Provider

contract IP is IIP {
    
    event IP_MetaTX_Rec(address src, s_meta_tx meta_tx); 
    
    mapping(uint256 => string) methods;
    uint256 max_supported_methods; 
    
    constructor() {
        methods[0] = "call_me(uint256)";
        max_supported_methods = 1;
    }


    function rec_meta_tx(s_meta_tx memory meta_tx) override external {
        emit IP_MetaTX_Rec(msg.sender, meta_tx);
        execute(meta_tx);
    }
    
    function execute(s_meta_tx memory meta_tx) internal {
        require( meta_tx.method_id < max_supported_methods, "Invalid Method_ID" ); 
        if(meta_tx.call_type==1) {
            //(meta_tx.target).call_me(meta_tx.val);
            (bool success, bytes memory _data) = meta_tx.target.call(
                abi.encodeWithSignature(methods[meta_tx.method_id], meta_tx.val));  
        }
        
        if(meta_tx.call_type==2) {
            (bool success, bytes memory _data) = meta_tx.target.delegatecall(
                abi.encodeWithSignature(methods[meta_tx.method_id], meta_tx.val)
            );
        }

    }
}



