import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:transaction_keeper_app/enums/transaction_enums.dart';
import 'package:transaction_keeper_app/screens/transaction/home_screen_view_model.dart';
import 'package:transaction_keeper_app/widget/transaction_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'credit_page.dart';
import 'debit_page.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TabController tabController = useTabController(initialLength: 2);
    double heightFactor = 0.25;
    final double screenHeight = MediaQuery.of(context).size.height;
    double maxHeight = screenHeight * heightFactor;
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      viewModelBuilder: ()=> HomeScreenViewModel(),
      builder: (context, model, _) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () =>model.addTransaction(),
            child: const Icon(Icons.add, color: Colors.white,)),
          appBar: AppBar(
            title: const Text("Transactions"),
            actions: [
              IconButton(
                onPressed: ()=>model.logout(),
                icon: const Icon(Icons.logout),
              )
            ],
            bottom: TabBar(
              controller: tabController,
              tabs: [
                Text(getTransTypeCapitalized(TransactionType.debit)),
                Text(getTransTypeCapitalized(TransactionType.credit)),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TabBarView(
              controller: tabController,
              children:  [
                DebitPage(email: model.getCurrentUser(),),
                CreditPage(email:model.getCurrentUser(),),
              ],
            ),
          ),
        );
      }
    );
  }
}

final fireStore = FirebaseFirestore.instance;


