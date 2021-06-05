import 'package:transactionkeeper/enums/transaction_enums.dart';

class Transaction {
  int id;
  String date;
  TransactionType type;
  String description;
  String beneficiary;
  double amount;

  Transaction(
      String date, TransactionType type, String desc, String ben, double amt) {
    this.date = date;
    this.type = type;
    this.description = desc;
    this.beneficiary = ben;
    this.amount = amt;
  }

  @override
  String toString() {
    return "Date: $date, Description: $description, Beneficiary: $beneficiary, Amount: " +
        amount.toString();
  }
}
