// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Generic Imports

struct s_meta_tx {
    address target; 
    uint call_type; 
    uint method_id;
    uint val;
}

interface IMNN {
    function submit(address ip, s_meta_tx memory meta_tx) external;
}



interface IIP {
    function rec_meta_tx(s_meta_tx memory meta_tx) external;
}

interface IA {
    function call_me(uint256 x) external;
}






