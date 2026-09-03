// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Conditional {
    
    modifier geterThenFive(uint params){  //modifier common function
        require(params<5,"value must be less then 5");
        _;
    }

    function valadition(uint params) public pure geterThenFive(params) returns(uint){
        // require(params<5,"value must be less then 5");
        return params;
    }

    function stringReture(uint val)public pure returns(string memory) {
        if(val>5){
            return "HI";
        }else{
          return "Hello World";
        }
        
    }
}