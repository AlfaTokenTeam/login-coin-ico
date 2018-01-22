pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract LoginCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function LoginCoin(address _owner)  UpgradeableToken(_owner) {
    name = "LoginCoin";
    symbol = "LGC";
    totalSupply = 100000000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}