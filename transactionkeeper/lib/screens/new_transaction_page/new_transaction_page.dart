import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:transactionkeeper/enums/transaction_enums.dart';

class NewTransactionPage extends StatefulWidget {
  @override
  State<NewTransactionPage> createState() => NewTransactionPageState();
}

class NewTransactionPageState extends State<NewTransactionPage> {
  @override
  Widget build(BuildContext context) {
    TextStyle typeTitleTextStyle =
        TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
    TextStyle typeTextStyle =
        TextStyle(fontWeight: FontWeight.w400, fontSize: 18);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("New Transaction"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TransactionInputField(
              label: "Beneficiary",
            ),
            TransactionInputField(label: "Description", lines: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TransactionInputField(
                    label: "Amount",
                  ),
                ),
                Expanded(
                  child: TransactionInputField(
                    label: "Date",
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Type:",
                    style: typeTitleTextStyle,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          Radio(
                            onChanged: (value) {},
                            value: false,
                            groupValue: true,
                          ),
                          Text(
                            getTransTypeCapitalized(TransactionType.debit),
                            style: typeTextStyle,
                          ),
                        ],
                      )),
                      Expanded(
                          child: Row(
                        children: [
                          Radio(
                            onChanged: (value) {},
                            value: false,
                            groupValue: true,
                          ),
                          Text(
                            getTransTypeCapitalized(TransactionType.credit),
                            style: typeTextStyle,
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () async {
                          Fluttertoast.showToast(
                              msg:
                                  "Your Transaction has been saved successfully");
                          await Future.delayed(Duration(seconds: 1));
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Submit",
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TransactionInputField extends StatelessWidget {
  final String label;
  final int lines;

  const TransactionInputField({
    Key key,
    this.label,
    this.lines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        minLines: lines,
        maxLines: lines,
        textAlignVertical: TextAlignVertical.top,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          labelText: "$label",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
