// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.19 <0.9.0;

import { ERC20Permit_Test } from "../ERC20Permit.t.sol";

contract PermitTypehash_Test is ERC20Permit_Test {
    /// @dev it should return the EIP-2612 permit typehash.
    function test_PermitTypehash() external {
        bytes32 actualPermitTypehash = erc20Permit.PERMIT_TYPEHASH();
        bytes32 expectedPermitTypehash = PERMIT_TYPEHASH;
        assertEq(actualPermitTypehash, expectedPermitTypehash, "permitTypehash");
    }
}
