import 'package:transactionkeeper/enums/transaction_enums.dart';

class Transaction{

  DateTime date;
  TransactionType type;
  String description;
  String beneficiary;
  double amount;

  Transaction(DateTime date, TransactionType type, String desc, String ben, double amt){
    this.date = date;
    this.type = type;
    this.description = desc;
    this.beneficiary = ben;
    this.amount = amt;
  }
}