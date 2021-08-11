
# Solidity_Experiments_MetaTX_20210811

Solidity Experiments with Meta TX

The actors of a Meta TX are 

- the End User 

- its on chain Identity Provider 

- an off chain Meta Network Node that submits the TX on chain on behalf of the user and pays the gas cost, then it will be reimbursed by the identity provider when the Meta TX instructions will be executed (not in this demo yet, but will add it)

- another contract the End User wants to interact with through the MetaTX chain 



The purpose of this repo is to build a simple Proof of Concept where each actor is represented by a SC 

The instructions about Deploying and Running the Contracts are in [contracts](contracts), it can be easily done in Solidity only 

What you can see is changing the `call_type` from 1 to 2 changes the call mechanism from `call()` to `delegatecall()` and this means from the perspective of the final contract the `msg.sender` switches from the Identity Provider, as it should be, to the Meta Network Node 












