import 'package:flutter/material.dart';
import 'package:transactionkeeper/enums/transaction_enums.dart';
import 'package:transactionkeeper/widget/transaction_card.dart';

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
    );
  }
}

class DebitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        children: [
          TransactionCard(Colors.red.shade100,'Dolapo', 2000.00  ),
          TransactionCard(Colors.red.shade100,'Damilare', 30000.00 ),
          TransactionCard(Colors.red.shade100,'Olamiji', 5000.00 ),
          TransactionCard(Colors.red.shade100,'BEAM', 50000.00 ),
          TransactionCard(Colors.red.shade100,'Seyi', 20000.00 ),
          TransactionCard(Colors.red.shade100,'Promise', 3000.00 ),
          TransactionCard(Colors.red.shade100,'Tobi', 4000.00 ),
          TransactionCard(Colors.red.shade100,'Victor', 70000.00 ),
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
          TransactionCard(Colors.green.shade100,'Dolapo', 200000.00  ),
          TransactionCard(Colors.green.shade100,'Damilare', 30000.00 ),
          TransactionCard(Colors.green.shade100,'Olamiji', 5000.00 ),
          TransactionCard(Colors.green.shade100,'BEAM', 50000.00 ),
          TransactionCard(Colors.green.shade100,'Seyi', 20000.00 ),
          TransactionCard(Colors.green.shade100,'Promise', 3000.00 ),
          TransactionCard(Colors.green.shade100,'Tobi', 4000.00 ),
          TransactionCard(Colors.green.shade100,'Victor', 70000.00 ),
        ],
      ),
    );
  }
}
