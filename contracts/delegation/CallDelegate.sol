// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract CallDelegation {
    address delegation_address;

    constructor(address _delegation_address) public {
        delegation_address = _delegation_address;
    }

    function win() public {
        delegation_address.delegatecall(
            abi.encodeWithSignature("random_function()")
        );
    }
}
