// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// mapping is a data type similar to a databaseand it's made of keys => values pairs
// mapping(uint => string) public exmple;

contract Mappings {

  mapping(uint => string) public colors;

  constructor() {
    colors[1] = "Red";
    colors[2] = "Yellow";
    colors[3] = "Green";
  }

  function addColor(uint _index, string memory _color) public {
    colors[_index] = _color;
  }

  struct Car{
    string maker;
    string model;
  }

  mapping(uint => Car) public cars;

  function addCar(uint _index, string memory _maker, string memory _model) public {
    cars[_index] = Car(_maker, _model);
  }

  mapping(address => mapping(uint => Car)) public playerCars;

  function  addPlayerCar(uint _index, string memory _maker, string memory _model) public {
    playerCars[msg.sender][_index] = Car(_maker, _model);
  }
}
