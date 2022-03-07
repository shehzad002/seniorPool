// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "./goflamingoConfig.sol";
import "./IPool.sol";
import "./IFidu.sol";
import "./ISeniorPool.sol";
import "./ISeniorPoolStrategy.sol";
import "./ICreditDesk.sol";
import "./IERC20withDec.sol";
import "./ICUSDCContract.sol";
import "./IPoolTokens.sol";
import "./IBackerRewards.sol";
import "./IgoflamingoFactory.sol";
import "./IGo.sol";

/**
 * @title ConfigHelper
 * @notice A convenience library for getting easy access to other contracts and constants within the
 *  protocol, through the use of the goflamingoConfig contract
 * @author goflamingo
 */

library ConfigHelper {
  function getPool(goflamingoConfig config) internal view returns (IPool) {
    return IPool(poolAddress(config));
  }

  function getSeniorPool(goflamingoConfig config) internal view returns (ISeniorPool) {
    return ISeniorPool(seniorPoolAddress(config));
  }

  function getSeniorPoolStrategy(goflamingoConfig config) internal view returns (ISeniorPoolStrategy) {
    return ISeniorPoolStrategy(seniorPoolStrategyAddress(config));
  }

  function getUSDC(goflamingoConfig config) internal view returns (IERC20withDec) {
    return IERC20withDec(usdcAddress(config));
  }

  function getCreditDesk(goflamingoConfig config) internal view returns (ICreditDesk) {
    return ICreditDesk(creditDeskAddress(config));
  }

  function getFidu(goflamingoConfig config) internal view returns (IFidu) {
    return IFidu(fiduAddress(config));
  }

  function getCUSDCContract(goflamingoConfig config) internal view returns (ICUSDCContract) {
    return ICUSDCContract(cusdcContractAddress(config));
  }

  function getPoolTokens(goflamingoConfig config) internal view returns (IPoolTokens) {
    return IPoolTokens(poolTokensAddress(config));
  }

  function getBackerRewards(goflamingoConfig config) internal view returns (IBackerRewards) {
    return IBackerRewards(backerRewardsAddress(config));
  }

  function getgoflamingoFactory(goflamingoConfig config) internal view returns (IgoflamingoFactory) {
    return IgoflamingoFactory(goflamingoFactoryAddress(config));
  }

  function getGFI(goflamingoConfig config) internal view returns (IERC20withDec) {
    return IERC20withDec(gfiAddress(config));
  }

  function getGo(goflamingoConfig config) internal view returns (IGo) {
    return IGo(goAddress(config));
  }

  function oneInchAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.OneInch));
  }

  function creditLineImplementationAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.CreditLineImplementation));
  }

  function trustedForwarderAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.TrustedForwarder));
  }

  function configAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.goflamingoConfig));
  }

  function poolAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.Pool));
  }

  function poolTokensAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.PoolTokens));
  }

  function backerRewardsAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.BackerRewards));
  }

  function seniorPoolAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.SeniorPool));
  }

  function seniorPoolStrategyAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.SeniorPoolStrategy));
  }

  function creditDeskAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.CreditDesk));
  }

  function goflamingoFactoryAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.goflamingoFactory));
  }

  function gfiAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.GFI));
  }

  function fiduAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.Fidu));
  }

  function cusdcContractAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.CUSDCContract));
  }

  function usdcAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.USDC));
  }

  function tranchedPoolAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.TranchedPoolImplementation));
  }

  function migratedTranchedPoolAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.MigratedTranchedPoolImplementation));
  }

  function reserveAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.TreasuryReserve));
  }

  function protocolAdminAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.ProtocolAdmin));
  }

  function borrowerImplementationAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.BorrowerImplementation));
  }

  function goAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.Go));
  }

  function stakingRewardsAddress(goflamingoConfig config) internal view returns (address) {
    return config.getAddress(uint256(ConfigOptions.Addresses.StakingRewards));
  }

  function getReserveDenominator(goflamingoConfig config) internal view returns (uint256) {
    return config.getNumber(uint256(ConfigOptions.Numbers.ReserveDenominator));
  }

  function getWithdrawFeeDenominator(goflamingoConfig config) internal view returns (uint256) {
    return config.getNumber(uint256(ConfigOptions.Numbers.WithdrawFeeDenominator));
  }

  function getLatenessGracePeriodInDays(goflamingoConfig config) internal view returns (uint256) {
    return config.getNumber(uint256(ConfigOptions.Numbers.LatenessGracePeriodInDays));
  }

  function getLatenessMaxDays(goflamingoConfig config) internal view returns (uint256) {
    return config.getNumber(uint256(ConfigOptions.Numbers.LatenessMaxDays));
  }

  function getDrawdownPeriodInSeconds(goflamingoConfig config) internal view returns (uint256) {
    return config.getNumber(uint256(ConfigOptions.Numbers.DrawdownPeriodInSeconds));
  }

  function getTransferRestrictionPeriodInDays(goflamingoConfig config) internal view returns (uint256) {
    return config.getNumber(uint256(ConfigOptions.Numbers.TransferRestrictionPeriodInDays));
  }

  function getLeverageRatio(goflamingoConfig config) internal view returns (uint256) {
    return config.getNumber(uint256(ConfigOptions.Numbers.LeverageRatio));
  }
}
