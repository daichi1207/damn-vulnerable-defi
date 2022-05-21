pragma solidity ^0.8.7;

interface ITrusterLenderPool {
    function damnValuableToken() external view returns (address);

    function flashLoan(
        uint256 borrowAmount,
        address borrower,
        address target,
        bytes calldata data
    ) external;
}
