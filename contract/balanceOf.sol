// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import { ISuperToken } from "@superfluid-finance/ethereum-contracts/contracts/interfaces/superfluid/ISuperToken.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract superfluid {
    
     address private constant fUSDCxAddress = 0xbe49ac1EadAc65dccf204D4Df81d650B50122aB2; 
   address private constant vitalikAddress = address(0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045);
    // Address of the fUSDCx token contract

    function hasActiveStreamToVitalik(address) external view returns (uint256) {
        ISuperToken fUSDCx = ISuperToken(fUSDCxAddress);
        return fUSDCx.balanceOf(vitalikAddress) > 0 ? 1 : 0;
    }
}