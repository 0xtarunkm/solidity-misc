// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {DecentralizedStableCoin} from "./DecentralizedStableCoin.sol";

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
    /////////////////
    /// Errors  ////
    ////////////////
    error DSCEngine__NeedsMoreThanZero();
    error DSCEngine__TokenAddressesAndPriceFeedAddressesMuseBeSameLength();

    /////////////////////////
    /// State Variable  ////
    ///////////////////////
    mapping(address token => address priceFeed) private s_priceFeeds;

    DecentralizedStableCoin private mut i_dsc;

    /////////////////
    /// Modifiers ///
    ////////////////
    modifier moreThanZero(uint256 amount) {
        if (amount == 0) {
            revert DSCEngine__NeedsMoreThanZero();
        }
        _;
    }

    //////////////////
    /// Functions ///
    ////////////////
    constructor(address[] memory tokenAddresses, address[] memory priceFeedAddress, address dscAddress) {
        if (tokenAddresses.length != priceFeedAddress.length) {
            revert DSCEngine__TokenAddressesAndPriceFeedAddressesMuseBeSameLength();
        }

        for (uint256 i = 0; i < tokenAddresses.length; i++) {
            s_priceFeeds[tokenAddresses[i]] = priceFeedAddress[i];
        }
    }

    ///////////////////////////
    /// External Functions ///
    /////////////////////////
    function depositCollateralAndMintDsc() external {}

    /**
        * @param tokenCollateralAddress - address of the collateral to deposit
        * @param amountCollateral - amount of collateral to deposit
     */
    function depositCollateral(
        address tokenCollateralAddress,
        uint256 amountCollateral
    ) external moreThanZero(amountCollateral) {}

    function redeemCollateralForDsc() external {}

    function redeemCollateral() external {}

    function mintDsc() external {}

    function burnDsc() external {}

    function liquidate() external {}

    function getHealthFactor() external view {}
}