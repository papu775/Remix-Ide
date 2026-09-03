// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Basic {
    uint public valOne = 50; //state variable //perment store
    uint public valTwo;
    bytes2 public str = "b"; //store hexa decimal store
    constructor(uint _val) {
        valTwo = _val;
    }

    function setStateVariable(uint val) public {
        valOne += val;
    }

    function getStateVariable() public view returns (uint) {
        return valOne;
    }

    function localVariable() public pure returns (uint) {
        uint val = 501; //local variable //when function exists
        return val;
    }

    uint public data;

    function forLoopFun() public pure returns (uint) {
        uint val = 501; //local variable //when function exists
        for (int i = 0; i <= 3; i++) {
            val += 1;
        }
        return val;
    }

    
}
