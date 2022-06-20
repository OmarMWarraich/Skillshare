// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// enumerated lists restrict how many states a variable can have

// enum name {status, status};

contract Enum {
  
  enum DoorCondition { Closed, Open }
  DoorCondition door;

  constructor() {
    door = DoorCondition.Open;
  }

  function openDoor() public {
    door = DoorCondition.Open;
  }


  function closeDoor() public {
    door = DoorCondition.Closed;
  }

  function getCondition() public view returns(DoorCondition) {
    return door;
  }

} 