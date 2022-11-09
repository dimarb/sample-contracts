// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.4;

contract management{
    
    struct Asset{
        string date;
        string hash;
    }
    
    mapping(uint256 =>Asset) internal map;
    
    function add(uint256 _id, string memory _date, string memory _hash)public{
        map[_id].date = _date;
        map[_id].hash = _hash;
    }
    
    function getByKey(uint256 _id)public view returns(string memory date, string memory hash){
        date = map[_id].date;
        hash = map[_id].hash;
    }
    
  
    
}
