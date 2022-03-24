import 'package:flutter/material.dart';
import 'package:transaction_keeper_app/enums/transaction_enums.dart';
class UserCard extends StatelessWidget {
  final TransactionType transactionType;
  final String userEmail;
  final String total;
  const UserCard({
    required this.transactionType,
    required this.userEmail,
    required this.total,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: transactionType==TransactionType.debit?Colors.red:Colors.green,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Account ID',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      userEmail,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text('Total Debit',
                      style: TextStyle(color: Colors.white)),
                  Text(total,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 35,
                          color: Colors.white)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
