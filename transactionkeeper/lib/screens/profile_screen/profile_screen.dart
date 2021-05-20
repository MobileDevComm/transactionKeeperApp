import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile_Screen extends StatefulWidget{
  const Profile_Screen({Key key}) : super(key: key);

@override
Profile_ScreenState createState()=> Profile_ScreenState();
}

class Profile_ScreenState extends State<Profile_Screen>{
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.white,
        body:
        SafeArea(

          child: SingleChildScrollView(
            child: Column(
              children: [



                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.symmetric(horizontal: 10),


                      child: TextButton.icon(
                            label: Text(''),
                          icon:Icon(Icons.arrow_back),
                        onPressed: (){
                          Navigator.pop(context);

                        },
          ),
                    ),
                    Container(
                      alignment: Alignment.topRight,

                      child: TextButton.icon(
                        label: Text(''),
                        icon:Icon(Icons.note_add_outlined),
                        onPressed: (){
                   //       Navigator.push(
                     //       context,
                        //    MaterialPageRoute(builder: (context) => Sign_up()),
                       //   );

                        },
                      ),
                    ),
                ]
                ),
                SizedBox(
                 height: 20,
                ),


                Row(
               //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                      margin: EdgeInsets.symmetric(horizontal:30,vertical: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.black26,
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/person-image.png'),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Text('Emma Phillips',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),
                          ),
                        ),
                        Container(


                          child: Text('Fashion Model',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w100,
                                fontSize: 15
                            ),),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal:30,vertical: 20),
                      child: Icon(Icons.phone),

                    ),
                    Container(
                      child: Text('(850)435 4543',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w100,
                            fontSize: 20
                        ),),
                    ),

                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal:30,vertical: 10),
                      child: Icon(Icons.email_outlined),

                    ),
                    Container(
                      child: Text('emma.phillip@gmail.com',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w100,
                            fontSize: 15
                        ),),
                    ),
                  ],
                ),
                SizedBox(
                height: 20,
                ),

                Row(


                  children: [

                    Container(
                        height: 100,
                        width: 211,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(1.0),
                        ),
                        child: Center(
                          child:
                          Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  margin: EdgeInsets.symmetric(vertical: 9),
                                  child:
                                  Text('#140.00',
                                    style:
                                    TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35
                                    ),
                                  ),
                                ),
                                Container(
                                  child:
                                  Text('Wallet',
                                    style:
                                    TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w100
                                    ),
                                  ),
                                ),
                              ]


                          ),
                        )
                    ),





                  Container(
                    height: 100,
                    width: 212,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                    child: Center(
                      child:
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            margin: EdgeInsets.symmetric(vertical: 9),
                        child:
                          Text('12',
                          style:
                          TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35
                          ),
                          ),
                          ),
                         Container(
                           child:
                           Text('Orders',
                             style:
                             TextStyle(
                               color: Colors.grey,
                                 fontSize: 20,
                                 fontWeight: FontWeight.w100
                             ),
                           ),
                         ),
                ]


                ),
                    )
                  ),
                  ],
            ),


                SizedBox(
                  height: 20,
                ),



                TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal:30,vertical: 10),
                          child: Icon(Icons.favorite_border,
                            color: Colors.blue,),
                        ),
                      Container(
                        child: Text('Your Favorites',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                      ),
                    ],
                  ),
                ),


                TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal:30,vertical: 10),
                        child: Icon(Icons.account_balance_wallet,
                          color: Colors.blue,) ,

                      ),
                      Container(


                        child: Text('Payment',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                      ),
                    ],
                  ),
                ),


                TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal:30,vertical: 10),
                        child: Icon(Icons.account_balance_wallet,
                          color: Colors.blue,) ,

                      ),
                      Container(
                        child: Text('Tell a Friend',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                      ),
                    ],
                  ),
                ),



                TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal:30,vertical: 10),
                            child: Icon(Icons.aspect_ratio,
                              color: Colors.blue,) ,
                        ),

      Container(
                              child: Text('Promotion',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),

                          ),
                    ],
                  ),
                ),


                TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal:30,vertical: 10),
                        child: Icon(Icons.settings,
                          color: Colors.blue,) ,

                      ),
                      Container(
                        child: Text('Settings',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                      ),
                    ],
                  ),
                ),


                TextButton(
                  onPressed: (){},
                  child: Row(


                    children: [

                      Container(
                          height: 80,
                          width: 400,
                          decoration: BoxDecoration(
                            border: Border.symmetric(
                            ),
                            borderRadius: BorderRadius.circular(1.0),
                          ),
                          child: Center(
                            child:
                            Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15),
                                    margin: EdgeInsets.symmetric(vertical: 9),
                                    child:
                                    Icon(Icons.logout,
                                      color: Colors.red,),

                                  ),
                                  Container(
                                    child:
                                    Text('Log out',
                                      style:
                                      TextStyle(
                                          color: Colors.red,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold

                                      ),
                                    ),
                                  ),
                                ]


                            ),
                          )
                      ),
                    ],
                  ),
                ),
          ]
            ),
        ),
    )
    ));
  }
}