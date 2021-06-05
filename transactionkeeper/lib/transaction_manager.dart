import 'package:transactionkeeper/models/transaction.dart';

import 'enums/transaction_enums.dart';

class TransactionManager {
  static final TransactionManager _instance = TransactionManager._();
  Map<int, Transaction> _transactionsDb = {};
  int _count = 0;

  TransactionManager._() {}

  static TransactionManager get instance => _instance;

// Create
  recordTransaction(Transaction trans) {
    trans.id = _count++;
    _transactionsDb[trans.id] = trans;
  }

// Read
  List<Transaction> getAllTransactions() {
    return _transactionsDb.values;
  }

  Transaction getTransactionWithId(int id) {
    return _transactionsDb[id];
  }

  List<Transaction> getAllDebitTransactions() {
    return _getTransactionsOf(TransactionType.debit);
  }

  List<Transaction> getAllCreditTransactions() {
    return _getTransactionsOf(TransactionType.credit);
  }

  double getTotalDebits() {
    double _sum = 0;
    for (Transaction trans in getAllDebitTransactions()) {
      _sum += trans.amount;
    }
    return _sum;
  }

  double getTotalCredit() {
    double _sum = 0;
    for (Transaction trans in getAllCreditTransactions()) {
      _sum += trans.amount;
    }
    return _sum;
  }

// Update
  updateTransaction(Transaction transaction) {
    _transactionsDb[transaction.id] = transaction;
  }

// Delete
  deleteTransaction(Transaction transaction) {
    _transactionsDb.remove(transaction);
  }

  List<Transaction> _getTransactionsOf(TransactionType type) {
    List<Transaction> _result = [];
    for (Transaction trans in _transactionsDb.values) {
      if (trans.type == type) _result.add(trans);
    }
    return _result;
  }
}
