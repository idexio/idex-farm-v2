# IDEX Farm 

IDEX Farm is an adaptation of the standard [MasterChef](https://github.com/sushiswap/sushiswap/blob/d487cc774c0ac71fe2d0742976cafb3194658d62/contracts/MasterChef.sol) yield farming contracts. MasterChef is renamed to IDEXFarm and diverges from the original design on several fronts:

 * Fixed reward token supply: the [IDEX token](https://etherscan.io/address/0xb705268213d593b8fd88d3fdeff93aff5cbdcfae) has a fixed supply and thus cannot be minted directly by the IDEXFarm contract.
 * Additional controls: controls for adjusting the emission rate and reclaiming unearned IDEX tokens are included in the design.
 * Silverton-compatible migration: IDEXMigrator targets [IDEX Silverton’s](https://github.com/idexio/idex-contracts-silverton) Exchange contract rather than a new Pair contract.

## Contract Addresses
* IDEXFarm: TBD
* Migrator: TBD

## License

The IDEX Farm Smart Contracts and related code are released under the [GNU Lesser General Public License v3.0](https://www.gnu.org/licenses/lgpl-3.0.en.html).
