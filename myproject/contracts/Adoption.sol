pragma solidity ^0.4.11;

contract Adopttion {

	address[16] public adopters;

	function adopt(uint petID) public returns (uint) {

		require(petID >= 0 && petID <= 15);
		adopters[petID] = msg.sender;
		return petID;
	}

	function getAdopters() public returns (address[16]){

		return adopters;
	}

} //contract ends