// SPDX-License-Identifier: MIT
// 0x9b7a05d9F894F672290eF40a52Cb7a599C322706 >> Contract Address
pragma solidity ^0.8.19; // stating our version

contract SimpleStorage {

    uint256 public myFavoriteNumber;

    uint256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;


    function store (uint256 _favoriteNumber) public{
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}


