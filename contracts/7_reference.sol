// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Reference {
    int[5] num; //fixed array
    string[] num1; //dynamic array

    function getArrayLength()external view returns(uint){
        return num.length;
    }

    function setArrayData(uint _data,uint8 _index)external  returns(uint){
         num[_index] = 89;
         return _data;
    }

    function getArr()external view returns(int[5] memory) {
        return num;
    }

    struct Student {
        string name;
        uint roll;
        bool result;
    }
    Student public s1;
    function setStudent(string memory _name,uint _roll,bool _result)external {
        s1 = Student(_name,_roll,_result);
        // s1.name = _name;
        // s1.roll=_roll;
        // s1.result = _result;
    }

    function getStudent()external view returns(Student memory){
        return s1;
    }

    // One D Map
    mapping (uint=>string) oneDMap;

    function setOneDMap(uint _key,string memory _data)external  {
        oneDMap[_key]=_data;
    }
    function getOneDMap(uint _key)external view returns(string memory) {
        return oneDMap[_key];
    }

    //Two D Map

      mapping (uint=>mapping (uint=>string)) twoDMap;

    function setTwoDMap(uint _row,uint _col,string memory _data)external  {
        twoDMap[_row][_col]=_data;
    }
    function getTwoDMap(uint _row,uint _col)external view returns(string memory) {
        return twoDMap[_row][_col];
    }

    
}