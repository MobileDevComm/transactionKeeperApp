import 'package:flutter/material.dart';
import 'package:transactionkeeper/enums/transaction_enums.dart';
import 'package:transactionkeeper/models/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  TransactionCard({this.transaction});

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
                            "${transaction.date}",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[700]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('${transaction.beneficiary}',
                              style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                    Text("${transaction.amount.toString()}",
                        style: TextStyle(
                          fontSize: 20,
                          color: transaction.type == TransactionType.credit
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
