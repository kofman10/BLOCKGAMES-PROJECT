//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";



contract Kingdom is ERC20 {
 uint256 _totalSupply = 10000000 * 10 ** decimals();

 constructor() ERC20("Kingdom", "KFM") {
     _mint(msg.sender, 1000000 * 10 ** 18);
     
 }

   function buyTokens(address receiver, uint256 value) public payable{
       require(balanceOf(msg.sender) >= value);
    transfer(receiver, value);
    
}


}