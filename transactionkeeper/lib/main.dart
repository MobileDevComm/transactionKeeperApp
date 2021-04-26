import 'package:flutter/material.dart';
import 'package:transactionkeeper/screens/just_try.dart';
import 'screens/home.dart';

void main(){
  runApp(TKApp());
}

class TKApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Transaction Keeper",
      home: Home(),
    );
  }
}