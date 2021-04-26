import 'package:flutter/material.dart';
import 'package:transactionkeeper/enums/transaction_enums.dart';

class TransactionCard extends StatelessWidget {
  final String name;
  final double amount;
  final DateTime date;
  final TransactionType type;

  TransactionCard(this.name, this.amount,
      {this.date, this.type = TransactionType.debit});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(),
      child: Container(
        height: 100,
        child: Container(
            alignment: FractionalOffset.center,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Date/Time",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[700]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('$name', style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                    Text("$amount",
                        style: TextStyle(
                          fontSize: 20,
                          color: type == TransactionType.credit
                              ? Colors.green.shade600
                              : Colors.red.shade600,
                        )),
                  ]),
            ),
            margin: EdgeInsets.all(8),
            height: 200,
            width: double.infinity),
      ),
    );
  }
}
