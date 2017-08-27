pragma solidity ^0.4.15;

contract People {


Person[] public people;

struct Person{


	bytes32 firstName;
	bytes32 lastName;
	uint age;

}

function addPerson(bytes32 _firstName, bytes32 _lastName, uint _age) returns (bool success){

	Person memory newPerson;
	newPerson.firstName = _firstName;
	newPerson.lastName = _lastName;
	newPerson.age = _age;

	people.push(newPerson);
	return true; 

}

function getPeople() constant returns (bytes32[], bytes32[], uint[]){

	uint length = people.length;

	bytes32[] memory firstName = new bytes32[](length);
	bytes32[] memory lastName = new bytes32[](length);
	uint[] memory ages = new uint[](length);

	for(uint i = 0; i < people.length; i++ ){
		Person memory currentPerson;
		currentPerson = people[i];

		firstName[i] = currentPerson.firstName;
		lastName[i] = currentPerson.lastName;
		ages[i] = currentPerson.age;

	}

	return(firstName,lastName,ages);

}

}