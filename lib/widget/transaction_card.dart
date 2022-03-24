import 'package:flutter/material.dart';
import 'package:transaction_keeper_app/enums/transaction_enums.dart';
import 'package:transaction_keeper_app/models/transaction.dart';

class TransactionCard extends StatelessWidget {
  final String type;
  final String beneficiary;
  final String date;
  final String amount;
  final String time;
  const TransactionCard({
    Key? key,
    required this.beneficiary,
    required this.date,
    required this.amount,
    required this.type,
    required this.time,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: SizedBox(
        height: 100,
        child: Container(
            alignment: FractionalOffset.center,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('01'),
                      Text(
                          '${time.toString()} | ${date.toString()}',
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(beneficiary, style: const TextStyle(fontSize: 20)),
                      Text(amount, style: TextStyle(
                          fontSize: 20,
                          color: type==getTransTypeCapitalized(TransactionType.credit)?Colors.green:Colors.red)),
                    ],
                  ),
                ],
              ),
            ),
            margin: const EdgeInsets.all(8),
            height: 200,
            width: double.infinity),
      ),
    );
  }
}
