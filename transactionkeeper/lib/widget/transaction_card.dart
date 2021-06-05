import 'package:flutter/material.dart';
import 'package:transactionkeeper/enums/transaction_enums.dart';
import 'package:transactionkeeper/models/transaction.dart';
import 'package:transactionkeeper/screens/new_transaction_page/new_transaction_page.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  TransactionCard({this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(),
      child: InkWell(
        splashColor: Colors.grey,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NewTransactionPage(
                        transId: transaction.id,
                      )));
        },
        child: Container(
          height: 100,
          padding: const EdgeInsets.all(12.0),
          child: Container(
              alignment: FractionalOffset.center,
              child: Padding(
                padding: EdgeInsets.all(0.0),
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
      ),
    );
  }
}
