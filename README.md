# <img src="assets/logo-v3.png" alt="IDEX" height="37px" valign="top"> Farm v2

IDEX Farm v2 is an adaptation of the standard [MasterChef](https://github.com/sushiswap/sushiswap/blob/d487cc774c0ac71fe2d0742976cafb3194658d62/contracts/MasterChef.sol) yield farming contracts. MasterChef is renamed to IDEXFarm_v2 and diverges from the original design on several fronts:

 * Fixed reward token supply: the IDEX token ([Ethereum](https://etherscan.io/token/0xb705268213d593b8fd88d3fdeff93aff5cbdcfae), [Polygon](https://polygonscan.com/token/0x9cb74c8032b007466865f060ad2c46145d45553d)) has a fixed supply and thus cannot be minted directly by the IDEXFarm contract.
 * Additional controls: controls for adjusting the emission rate and reclaiming unearned IDEX tokens are included in the design.

IDEX Farm v2 further updates the original [IDEX Farm](https://github.com/idexio/idex-farm) design including:

 * Dual reward token support: rewards may be paid out in two tokens, with each token's emission rate individually configurable.
 * Native reward token support: in addition to ERC-20 reward tokens, native tokens, such as Ether or MATIC, may serve as a reward token.
 * Safety improvements: no migration mechanism is included in the design.

## Bug Bounty

The smart contracts in this repo are covered by a [bug bounty via Immunefi](https://www.immunefi.com/bounty/idex).

## License

The IDEX Farm v2 Smart Contracts and related code are released under the [GNU Lesser General Public License v3.0](https://www.gnu.org/licenses/lgpl-3.0.en.html).
