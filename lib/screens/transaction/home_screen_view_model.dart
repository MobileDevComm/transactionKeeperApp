import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:transaction_keeper_app/app/app_setup.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:transaction_keeper_app/app/app_setup.router.dart';
import 'package:transaction_keeper_app/enums/bottomsheet_type.dart';
import 'package:transaction_keeper_app/enums/transaction_enums.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../app_strings.dart';

class HomeScreenViewModel extends BaseViewModel{
  final _navigationService = locator<NavigationService>();
  late String userEmail;
  final form = GlobalKey<FormState>();
  DateTime now = DateTime.now();
  double totalDebit = 0;
  double totalCredit = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController descController = TextEditingController();
  final _bottomSheetService = locator<BottomSheetService>();
  final _auth = FirebaseAuth.instance;
  TransactionType dropDownValue = TransactionType.credit;
 validateAmount(value){
   if(value!.isEmpty){
     return 'Please enter a valid amount';
   }
 }
 getCurrentUser(){
  userEmail = _auth.currentUser!.email.toString();
return userEmail;
}
logout()async{
  await _auth.signOut();
  _navigationService.replaceWith(Routes.loginScreen);
}

 // get userMail {
 //   return _userEmail;
 // }
 void saveForm(){
   form.currentState!.save();
 }

  selectTransaction(value){
      dropDownValue = value;
      print("checking dropDown Value: $dropDownValue");
      notifyListeners();
  }
  saveTransaction()async{
   CollectionReference transactions = FirebaseFirestore.instance.collection(getCurrentUser());
    String time = DateFormat.Hm().format(now);
    String date = DateFormat.MMMMd().format(now);
    String beneficiary = nameController.text;
    double amount = double.parse(amountController.text);
   transactions.add(
     {
       'amount': amount.toString(),
       'beneficiary': beneficiary,
        'transactionType': getTransTypeCapitalized(dropDownValue),
       'date': date,
       'time': time,
     }
   );

  }
 calculateTotal(){
   if(dropDownValue == TransactionType.debit) {
     double debitAmount = double.parse(amountController.text);
     totalDebit += debitAmount;
     print(totalDebit);
   }
   else if(dropDownValue == TransactionType.credit){
     totalCredit += double.parse(amountController.text);
   }
 }
  addTransaction(){
_bottomSheetService.showCustomSheet(
  variant: BottomSheetType.AddTransactionBottomSheet,
  enableDrag: true,
  barrierDismissible: true,
  takesInput: true
);
  }

}