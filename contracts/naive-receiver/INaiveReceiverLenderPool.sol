interface INaiveReceiverLenderPool {
    function fixedFee() external pure returns (uint256);

    function flashLoan(address borrower, uint256 borrowAmount) external;
}
