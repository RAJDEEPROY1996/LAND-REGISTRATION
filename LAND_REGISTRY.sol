// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import"./ERC1155.sol";

contract Land_Registry is ERC1155{
     
     constructor() ERC1155("LAND REGISTRY"){}
     function Register_Land_Details(uint256 land_id,uint256 price_of_land) public returns(uint256){
         require(balanceOf(msg.sender,land_id)==0,"Kindly provide other Land_Id... Already Registered");
        _mint(msg.sender, land_id, price_of_land,"");
        return land_id;
     }   
}
