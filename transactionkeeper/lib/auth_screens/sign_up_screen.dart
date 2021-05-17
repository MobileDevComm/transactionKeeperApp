import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:transactionkeeper/auth_screens/login.dart';

class sign_up extends StatefulWidget {
  @override
  State createState() => sign_up_state();
}
  class sign_up_state extends State<sign_up> {
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          body: SafeArea(

            child: Center(

              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [

                Container(
                  margin: EdgeInsets.symmetric(vertical:12 ),
                  alignment: Alignment.topLeft,
                    child:  TextButton.icon(
                        label:Text('') ,
                        icon: Icon(Icons.arrow_back,
                        color: Colors.black,),
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                        }
                    ),
                  ),


                    SizedBox(
                      height: 30,
                    ),

                    Container(
                      child:
                      Text('Let us Get started!',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize:45,),
                    ),
        ),
                    Container(
                      child:
                      Text('Create an account to Q to get all the Features',
                      style: TextStyle(
                        fontWeight: FontWeight.w400
                      ),
                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin:EdgeInsets.symmetric(horizontal: 12),
                      decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: TextFormField(
                        style: TextStyle(fontSize: 15.0,
                            color: Colors.blue),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            ),
                            prefixIcon: Icon(
                              Icons.person_outlined,
                              color: Colors.grey,
                            ),
                            hintText: 'JHhone Williams',
                            hintStyle: TextStyle(fontSize: 11.0,)),
                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin:EdgeInsets.symmetric(horizontal: 12),
                      decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: TextFormField(
                        style: TextStyle(fontSize: 15.0,
                            color: Colors.blue),

                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            ),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.grey,
                            ),
                            hintText: 'Jhonewillaims@gmail.com',
                            hintStyle: TextStyle(fontSize: 11.0,)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin:EdgeInsets.symmetric(horizontal: 12),
                      decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: TextFormField(
                        style: TextStyle(fontSize: 15.0,
                            color: Colors.blue),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            ),
                            prefixIcon: Icon(
                              Icons.phone_android,
                              color: Colors.grey,
                            ),
                            hintText: 'Phone',
                            hintStyle: TextStyle(fontSize: 11.0,)),
                      ),
                    ),
                SizedBox(
                  height: 30,),

                    Container(
                      margin:EdgeInsets.symmetric(horizontal: 12),
                      decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: TextFormField(
                        style: TextStyle(fontSize: 15.0,
                            color: Colors.blue),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            ),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.grey,
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(fontSize: 11.0,)),
                      ),
                    ),
                    SizedBox(
                      height: 30,),

                    Container(
                      margin:EdgeInsets.symmetric(horizontal: 12),
                      decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: TextFormField(
                        style: TextStyle(fontSize: 15.0,
                            color: Colors.blue),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            ),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.grey,
                            ),
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(fontSize: 11.0,)),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 150,


                      child: ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('CRETE'),
                        ),
                        onPressed: () {
                        },
                        style:
                        ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0),

                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
                        Container(

                          child: Text('Already have an account?'),
                        ),
                        InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));},
                          child: Container(

                            child: Text( ' Login here',
                              style: TextStyle(color:Colors.red.shade900,
                              fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        ],
                    ),


                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
  }