// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./simplestorage.sol";
contract extra is simplestorage{
    //override - virtual ovrride
    function store(uint256 id1) public override {
        id=id1+5;
    }
}
