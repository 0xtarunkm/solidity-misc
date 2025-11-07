// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/**
 * @title DSCEngine
 * @author Tarun Kumar
 * The system is designed to be as minimal as possible, and have the tokens maintain a 1
 token == $1 peg
 *
 * It is similar to DAI if DAI has no governance, no fees and was only backed by WETH and WBTC.
 *
 * @notice This contract is the core of the DSC System. It handles all the logic for minting and redeeming
 DSC, as well as depositing and withdrawing collateral.
 * @notice This contract is Very loosely based on the MakerDAO 
 */
contract DSCEngine {
    function depositCollateralAndMintDsc() external {}

    function depositCollateral() external {}

    function redeemCollateralForDsc() external {}

    functio

    function burnDsc() external {}

    function liquidate() external {}

    function getHealthFactor() external view {}
}