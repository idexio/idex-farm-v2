# <img src="assets/logo-v3.png" alt="IDEX" height="37px" valign="top"> Farm 

IDEX Farm is an adaptation of the standard [MasterChef](https://github.com/sushiswap/sushiswap/blob/d487cc774c0ac71fe2d0742976cafb3194658d62/contracts/MasterChef.sol) yield farming contracts. MasterChef is renamed to IDEXFarm and diverges from the original design on several fronts:

 * Fixed reward token supply: the IDEX token ([Ethereum](https://etherscan.io/token/0xb705268213d593b8fd88d3fdeff93aff5cbdcfae), [Polygon](https://polygonscan.com/token/0x9cb74c8032b007466865f060ad2c46145d45553d)) has a fixed supply and thus cannot be minted directly by the IDEXFarm contract.
 * Additional controls: controls for adjusting the emission rate and reclaiming unearned IDEX tokens are included in the design.
 * Silverton-compatible migration: IDEXMigrator targets [IDEX Silverton’s](https://github.com/idexio/idex-contracts-silverton) Exchange contract rather than a new Pair contract.

## Contract Addresses
* IDEXFarm: [0xB9C951c85C8646daFCDC0aD99D326C621aBBAdcE](https://polygonscan.com/address/0xb9c951c85c8646dafcdc0ad99d326c621abbadce)

## Audit

IDEXFarm is covered by [Silverton's comprehensive audit](https://github.com/idexio/idex-contracts-silverton/blob/main/audits/IDEX%20v3%20-%20Quantstamp.pdf).

## License

The IDEX Farm Smart Contracts and related code are released under the [GNU Lesser General Public License v3.0](https://www.gnu.org/licenses/lgpl-3.0.en.html).
