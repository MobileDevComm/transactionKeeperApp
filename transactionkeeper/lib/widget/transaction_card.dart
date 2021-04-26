import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {

  final Color color;
  String name;
  double amount;
  DateTime date;
  TransactionCard(this.color, this.name, this.amount);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
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
                            style:
                                TextStyle(fontSize: 15, color: Colors.grey[700]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('$name', style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                    Text("$amount", style: TextStyle(fontSize: 20)),
                  ]),
            ),
            margin: EdgeInsets.all(8),
            height: 200,
            width: double.infinity),
      ),
    );
  }
}
