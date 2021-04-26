import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:transactionkeeper/enums/transaction_enums.dart';
import 'package:transactionkeeper/widget/transaction_card.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;
  String someText = "Some text";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    someText = "Some other text changed";
  }

  @override
  Widget build(BuildContext context) {
    /// someText = "Some other text Three Two Two";
    return Scaffold(
      appBar: AppBar(
        title: Text("Transactions"),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Text(getTransTypeCapitalized(TransactionType.debit)),
            Text(getTransTypeCapitalized(TransactionType.credit)),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          DebitPage(),
          CreditPage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 4,
        child: Container(
          height: 60,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Total: ",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "\u20A6",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                          AutoSizeText(
                            "500.00",
                            minFontSize: 28,
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Fluttertoast.showToast(msg: "The add button was clicked");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class DebitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TransactionCard(
            'Dolapo',
            2000.00,
            type: TransactionType.debit,
          ),
          TransactionCard(
            'Damilare',
            30000.00,
            type: TransactionType.debit,
          ),
          TransactionCard(
            'Olamiji',
            5000.00,
            type: TransactionType.debit,
          ),
          TransactionCard(
            'BEAM',
            50000.00,
            type: TransactionType.debit,
          ),
          TransactionCard(
            'Seyi',
            20000.00,
            type: TransactionType.debit,
          ),
          TransactionCard(
            'Promise',
            3000.00,
            type: TransactionType.debit,
          ),
          TransactionCard(
            'Tobi',
            4000.00,
            type: TransactionType.debit,
          ),
          TransactionCard(
            'Victor',
            70000.00,
            type: TransactionType.debit,
          ),
        ],
      ),
    );
  }
}

class CreditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TransactionCard(
            'Dolapo',
            200000.00,
            type: TransactionType.credit,
          ),
          TransactionCard(
            'Damilare',
            30000.00,
            type: TransactionType.credit,
          ),
          TransactionCard(
            'Olamiji',
            5000.00,
            type: TransactionType.credit,
          ),
          TransactionCard(
            'BEAM',
            50000.00,
            type: TransactionType.credit,
          ),
          TransactionCard(
            'Seyi',
            20000.00,
            type: TransactionType.credit,
          ),
          TransactionCard(
            'Promise',
            3000.00,
            type: TransactionType.credit,
          ),
          TransactionCard(
            'Tobi',
            4000.00,
            type: TransactionType.credit,
          ),
          TransactionCard(
            'Victor',
            70000.00,
            type: TransactionType.credit,
          ),
        ],
      ),
    );
  }
}
