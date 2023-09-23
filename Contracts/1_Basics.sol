// SPDX-License-Identifier: MIT
// Can also do: >=0.8.7 <0.9.0
pragma solidity ^0.8.18; //0.8.21

// A keyword in solidity, it's like a class
contract SimpleStorage {
    // Basic solidity types: Boolean, uint(unsigned/positive), int, address, bytes
    // bool hasFavoriteNumber = true;
    // string favoriteNumberInText = "Five";
    // int favoriteInt = -5;
    // address myAddress = 0x00321;
    // bytes32 favoriteBytes = "cat";

    // This gets initialized to a zero
    // public, if not given it is set to "internal"
    // A function is created here that returns favoriteNumber
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;

        // Now it costs gas because it is called inside of a gas consuming function
        retrieve();
    }

    // view and pure functions can't modify blockchain only read it, that's why cost no gas
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function add() public pure returns (uint16) {
        return 1 + 1;
    }
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138