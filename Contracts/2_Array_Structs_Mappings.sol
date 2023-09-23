// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    // Struct of a person
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // array of people
    People[] public people;

    // map(like object) of name => favouriteNumber
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        retrieve();
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        People memory newPerson = People(_favoriteNumber, _name);

        // push to array
        person.push(newPerson);

        // add into mapping
        nameToFavoriteNumber[_name] = _favoriteNumber
    }
}
