// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import { IUniswapV2Pair } from "./uniswapv2/interfaces/IUniswapV2Pair.sol";

interface ICustodian {
    function loadExchange() external view returns (IExchange exchange);
}

interface IExchange {
    function migrateLiquidityPool(address token0, address token1, bool isToken1Quote, uint256 desiredLiquidity, address to, address WETH) external returns (address liquidityProviderToken);
}

contract IDEXMigrator {
    address public farm;
    ICustodian public custodian;
    uint256 public notBeforeBlock;

    constructor(
        address _farm,
        ICustodian _custodian,
        uint256 _notBeforeBlock
    ) public {
        farm = _farm;
        custodian = _custodian;
        notBeforeBlock = _notBeforeBlock;
    }

    // Can only be called by the farm contract set in the constructor
    function migrate(IUniswapV2Pair orig, bool isToken1Quote, address WETH) public returns (address liquidityProviderToken) {
        require(msg.sender == farm, "not from farm");
        require(block.number >= notBeforeBlock, "too early to migrate");
        address token0 = orig.token0();
        address token1 = orig.token1();
        uint256 desiredLiquidity = orig.balanceOf(msg.sender);
        if (desiredLiquidity == 0) return address(0x0);
        orig.transferFrom(msg.sender, address(orig), desiredLiquidity);

        IExchange exchange = custodian.loadExchange();
        orig.burn(address(exchange));
        liquidityProviderToken = exchange.migrateLiquidityPool(token0, token1, isToken1Quote, desiredLiquidity, msg.sender, WETH);
    }
}
