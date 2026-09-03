// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Parent {
    function f1() public pure returns (string memory) {
        f2();
        f3();
        // f4(); //can not call only call outside solidity or other contract
        return "f1";
    }

    function f2() private pure returns (string memory) {
        return "f2";
    }

    function f3() internal pure returns (string memory) {
        return "f3";
    }

    function f4() external pure returns (string memory) {
        return "f4";
    }
}

contract Chield is Parent{
    string public str = f1(); //call only f1 and f3 (f2 private can not inheriate , f4 is a external only call outside solidity or other contract) 
}

contract OtherContract {
    Parent obj = new Parent();
    string public str1 = obj.f4();
} 


