// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;
pragma abicoder v2;

import "forge-std/Test.sol";
import "../src/ENSRegistry.sol";

contract TestENSRegistry is Test {
    ENSRegistry public ensRegistry;
    bytes32 constant rootNode = 0x0;

    function setUp() public {
        ensRegistry = new ENSRegistry();
    }

    function testAllowOwnershipTransfer() public {
        address newOwner = 0x0000000000000000000000000000000000001234;
        ensRegistry.setOwner(rootNode, newOwner);
        assertEq(newOwner, ensRegistry.owner(rootNode));
    }
}