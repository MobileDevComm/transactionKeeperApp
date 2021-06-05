import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:transactionkeeper/enums/transaction_enums.dart';
import 'package:transactionkeeper/models/transaction.dart';
import 'package:transactionkeeper/transaction_manager.dart';

class NewTransactionPage extends StatefulWidget {
  final int transId;

  NewTransactionPage({this.transId});

  @override
  State<NewTransactionPage> createState() => NewTransactionPageState();
}

class NewTransactionPageState extends State<NewTransactionPage> {
  TransactionType type;
  TransactionManager _manager = TransactionManager.instance;
  var beneController = TextEditingController();
  var descController = TextEditingController();
  var amtController = TextEditingController();
  var dateController = TextEditingController();
  DateTime _curDate = DateTime.now();
  Transaction _currentTrans;

  @override
  void initState() {
    if (widget.transId != null) {
      _currentTrans = _manager.getTransactionWithId(widget.transId);
      beneController.text = _currentTrans.beneficiary;
      descController.text = _currentTrans.description;
      amtController.text = _currentTrans.amount.toString();
      dateController.text = _currentTrans.date;
      type = _currentTrans.type;
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle typeTitleTextStyle =
        TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
    TextStyle typeTextStyle =
        TextStyle(fontWeight: FontWeight.w400, fontSize: 18);

    String _date = _curDate != null
        ? "${_curDate.day} / ${_curDate.month} / ${_curDate.year}"
        : "";

    dateController.text = _date;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("New Transaction"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TransactionInputField(
                label: "Beneficiary",
                controller: beneController,
              ),
              TransactionInputField(
                label: "Description",
                lines: 3,
                controller: descController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TransactionInputField(
                      label: "Amount",
                      controller: amtController,
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        TransactionInputField(
                          label: "Date",
                          inputType: TextInputType.datetime,
                          controller: dateController,
                        ),
                        Positioned(
                          top: 0,
                          right: 10,
                          bottom: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  icon: Icon(Icons.calendar_today),
                                  onPressed: () async {
                                    _curDate = await showDatePicker(
                                        context: context,
                                        initialDate: _curDate ?? DateTime.now(),
                                        firstDate: DateTime(2015),
                                        lastDate: DateTime(2022));
                                    setState(() {});
                                  }),
                            ],
                          ),
                        )
                      ],
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
                              onChanged: (currentValue) {
                                setState(() {
                                  type = TransactionType.debit;
                                });
                              },
                              value: type == TransactionType.debit,
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
                              onChanged: (currentValue) {
                                setState(() {
                                  type = TransactionType.credit;
                                });
                              },
                              value: type == TransactionType.credit,
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
                            Transaction newTransaction = Transaction(
                                dateController.text,
                                type,
                                descController.text,
                                beneController.text,
                                double.parse(amtController.text));
                            widget.transId == null
                                ? _manager.recordTransaction(newTransaction)
                                : _manager.updateTransaction(newTransaction);
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionInputField extends StatelessWidget {
  final String label;
  final int lines;
  final TextInputType inputType;
  final TextEditingController controller;

  const TransactionInputField({
    Key key,
    this.label,
    this.lines = 1,
    this.inputType,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        minLines: lines,
        maxLines: lines,
        keyboardType: inputType,
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
