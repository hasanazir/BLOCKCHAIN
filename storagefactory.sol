// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./simplestorage.sol";
contract storagefactory { 
    /*simplestorage public simples;
    function createssc() public {
        simples=new simplestorage();
    }*/
    simplestorage[] public simplesarr;
    function createssc() public {
        simplestorage simples=new simplestorage();
        simplesarr.push(simples);
    }
    function storesf(uint256 indx,uint256 num)public{
        simplestorage simples=simplesarr[indx];
        simples.store(num);
        //simplesarr[indx].store(num);
    }
    function getsf(uint256 indx)public view returns(uint256){
        simplestorage simples=simplesarr[indx];
        return simples.retrieve();
        //return simplesarr[indx].retrieve();
    }
}
