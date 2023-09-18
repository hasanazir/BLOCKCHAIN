// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; //0.8.12

contract simplestorage{
    //bool n=true;
    //uint n=123;
    uint256 id;
    //people public per1=people({id: 1,name: "Hasan"});
    mapping(uint256 => string) public itos;
    struct people{
        uint256 id;
        string name;
    }
    people[] public person;
    /*function addper(string memory name1,uint256 id1) public{
        people memory newp=people({id:id1,name:name1});
        person.push(newp);
    }*/
    /*function addper(string memory name1,uint256 id1) public{
        people memory newp=people({id1,name1});
        person.push(newp);
    }*/
    /*function addper(string memory name1,uint256 id1) public{
        person.push(people(id1,name1));
    }*///withoutmapping
    function addper(string memory name1,uint256 id1) public{
        person.push(people(id1,name1));
        itos[id1]= name1;
    }
    function store(uint256 m) public {
        id=m;
    }
    function retrieve() public view returns(uint256){
        return id;
    }
}
//0xd9145CCE52D386f254917e481eB44e9943F39138
