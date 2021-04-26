import 'package:flutter/material.dart';

class JustTry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          color: Colors.red.shade100,
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
                  children:[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Date/Time", style: TextStyle(fontSize: 15, color: Colors.grey[700]),),
                    Text("Beneficiary",  style: TextStyle(fontSize: 20)),
                  ],),
                  Text("Amount",  style: TextStyle(fontSize: 20)),
                ]
                ),
              ),
              margin: EdgeInsets.all(8),
              height: 200, width: double.infinity),
          ),
        )
      ),
    );
  }
}
