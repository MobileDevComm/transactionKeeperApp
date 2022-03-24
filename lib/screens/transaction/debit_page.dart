import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:transaction_keeper_app/enums/transaction_enums.dart';
import '../../widget/transaction_card.dart';
import '../../widget/user_card.dart';
import 'home.dart';
import 'home_screen_view_model.dart';

class DebitPage extends HookWidget {
  final String email;
  const DebitPage({required this.email, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
        viewModelBuilder: () => HomeScreenViewModel(),
        builder: (context, model, _) {
          return StreamBuilder<QuerySnapshot>(
              stream: fireStore.collection(model.getCurrentUser()).snapshots(),
              builder: (context, snapShot) {
                if (!snapShot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final transactions = snapShot.data!.docs.reversed;
                List<TransactionCard> debitTransaction = [];
                for (var trans in transactions) {
                  final String amount = trans['amount'].toString();
                  final String beneficiary = trans['beneficiary'];
                  final String transactionType = trans['transactionType'];
                  final String date = trans['date'];
                  final String time = trans['time'];
                  if (transactionType == 'Debit') {
                    debitTransaction.add(TransactionCard(
                      amount: amount,
                      beneficiary: beneficiary,
                      date: date,
                      type: transactionType,
                      time: time,
                    ));
                  }
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                     Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: UserCard(userEmail: model.getCurrentUser(),total: '2000', transactionType: TransactionType.debit),
                    ),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: debitTransaction,
                      ),
                    ),
                  ],
                );
              });
        });
  }
}

