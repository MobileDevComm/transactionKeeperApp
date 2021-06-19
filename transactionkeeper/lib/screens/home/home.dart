import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:transactionkeeper/enums/transaction_enums.dart';
import 'package:transactionkeeper/models/transaction.dart';
import 'package:transactionkeeper/screens/new_transaction_page/new_transaction_page.dart';
import 'package:transactionkeeper/transaction_manager.dart';
import 'package:transactionkeeper/widget/transaction_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;
  TransactionManager _manager = TransactionManager.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
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
          DebitPage(
            transactions: _manager.getAllDebitTransactions(),
          ),
          CreditPage(
            transactions: _manager.getAllCreditTransactions(),
          ),
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
                            "\$ ",
                            style: TextStyle(
                              color: tabController.index == 0
                                  ? Colors.red
                                  : Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                          AutoSizeText(
                            tabController.index == 0
                                ? "${_manager.getTotalDebits()}"
                                : "${_manager.getTotalCredit()}",
                            minFontSize: 28,
                            style: TextStyle(
                              color: tabController.index == 0
                                  ? Colors.red
                                  : Colors.green,
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
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NewTransactionPage()));
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class DebitPage extends StatelessWidget {
  final List<Transaction> transactions;

  DebitPage({this.transactions});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: generateCards()),
    );
  }

  List<TransactionCard> generateCards() {
    List<TransactionCard> _cards = [];
    for (Transaction trans in transactions)
      _cards.add(TransactionCard(
        transaction: trans,
      ));
    return _cards;
  }
}

class CreditPage extends StatelessWidget {
  final List<Transaction> transactions;

  CreditPage({this.transactions});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: generateCards(),
      ),
    );
  }

  List<TransactionCard> generateCards() {
    List<TransactionCard> _cards = [];
    for (Transaction trans in transactions)
      _cards.add(TransactionCard(
        transaction: trans,
      ));
    return _cards;
  }
}
