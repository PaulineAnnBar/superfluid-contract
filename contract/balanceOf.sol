// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import { ISuperToken } from "@superfluid-finance/ethereum-contracts/contracts/interfaces/superfluid/ISuperToken.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract StreamChecker {
    ISuperToken fUSDCx; 
    address constant vitalikEthAddress = 0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045; 

    constructor() {
        fUSDCx = ISuperToken(0xbe49ac1EadAc65dccf204D4Df81d650B50122aB2);
    }

    function balanceOf(address account) external view returns(bool) {
        (int96 flowRate,,,) = fUSDCx.getFlow(account, vitalikEthAddress);
        if (flowRate > 0) {
            return true;
        } else {
            return false;
        }
    }
}

