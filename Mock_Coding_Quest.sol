pragma solidity ^0.4.0;
// pragma helps define which version of solidity is to be used

contract Math{
    // uint stands for unsigned integer, this means there will be no negative values in this variable
    function adder(uint a, uint b) public pure returns(uint c){
        //whenever a function has to return something, please use the "returns" keyword 
        // along with the "return" keyword
        c = a + b;
        require(c >= a);
    }
}

contract ERC20Interface{
     function totalSupply() public constant returns (uint);
     function balanceOf(address tokenOwner) public constant returns (uint balance);
}

//inheritance
contract MockContract is ERC20Interface, Math {
    string public symbol;
    string public name;
    uint public totalSupply;
    uint8 public decimals;

    constructor() public {
        symbol = "MCQ";
        name="Mock Coin";
        decimals = 2;
        totalSupply = 10000;
    }

    function total_coin_supply() public constant returns(uint256){
        return totalSupply;
    }
}



