import 'package:flutter/material.dart';
import 'package:transaction_keeper_app/enums/transaction_enums.dart';

class TransactionData{
  DateTime date;
  TransactionType type;
  String beneficiary;
  int amount;

  TransactionData({
    required this.type,
    required this.amount,
    required this.date,
    required this.beneficiary,
  });
}