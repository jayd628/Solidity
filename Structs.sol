// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Structs {
    struct Car { // Structs allow to group data together
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars; 
    mapping(address => Car[]) public carsByOwner; // Owner can have multiple car, so cars in array

    function examples() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender); // intialized with paramaters in order of vars listed above 
        Car memory lambo = Car({year: 1980, model: "Lamborghini",  owner: msg.sender}); // here key value pairs, can switch around order here
        Car memory tesla; // memory = loads data, no modifications to data saved
        tesla.model = "Telsa";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari", 2020, msg.sender)); // intializing cars in memory and push into cars array

        Car storage _car = cars[0]; // _car is name = avoid confusion w/ car variable
        _car.year = 1999; // storage = want to update data in contract
        delete _car.owner; // reset owner in struct here

        delete cars[1]; // reset to default value
    }
}