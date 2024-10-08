// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Token1 {
	
	// public variables here
	string public T_Name= "Bloodlove";
	string public T_Abbr= "BL";
	uint public Total_T= 0;
	
	// mapping variable here
	mapping(address => uint) public balance;
	
	// mint function
	function mint(address add, uint val) public {
		Total_T += val;
		balance[add] += val;
	}
	
	// burn function
	function burn(address add, uint val) public {
		if (balance[add] > val) {
            Total_T -= val;
		    balance[add] -= val;
        }       
	}
}
