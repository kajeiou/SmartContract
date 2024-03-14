pragma solidity ^0.7.0;

contract SmartContract {

   string public message;
   constructor(string memory initMessage) {

      message = initMessage;
   }

   function update(string memory newMessage) public {
      message = newMessage;
   }
   modifier validateSenderAddress() {
      require(msg.sender[0] == 1, "Émetteur doit commencer par 1");
      _;
   }
   modifier validateTransactionTime() {
      require(block.timestamp % 2 == 0, "Les secondes de l'heure de la transaction doivent être paires");
      _;
   }
   modifier validateTransactionAmount(uint amount) {
        require(amount > 10, "Le montant de la transaction doit être supérieur à 10");
        _;
    }
}
