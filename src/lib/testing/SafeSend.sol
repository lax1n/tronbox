pragma solidity ^0.5.8;

contract SafeSend {
  address payable public recipient;

  constructor(address payable _recipient) public payable {
    recipient = _recipient;
  }

  function deliver() public {
    selfdestruct(recipient);
  }
}
