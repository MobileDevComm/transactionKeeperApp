import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transactionkeeper/auth_screens/sign_up_screen.dart';

class Login  extends StatefulWidget {
  @override
  State createState() => Login_State();
}

class Login_State extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children:
              [
                SizedBox(
                  height: 20,
                ),

                Center(
                  child:
                  Image(image: AssetImage('assets/images/login-illustration.png'
                  ),
                    height: 240,
                      width: 200,
                  ),
                ),

                Text('Welcome back!',
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize:45,
                  ),
                ),
                Text('Login to your existent account of Q Alure!',
                  style: TextStyle(fontWeight: FontWeight.w400,
                    fontSize:20,
                  ),
                ),
                SizedBox(
                  height: 20,
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
                          Icons.person,
                          color: Colors.grey,
                        ),
                        hintText: 'Flutter@gmail.com',
                        hintStyle: TextStyle(fontSize: 11.0,)),
                  ),
                ),
            SizedBox(
              height: 20),


                    Container(
                      margin:EdgeInsets.symmetric(horizontal: 12),
                      decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: TextFormField(
              style: TextStyle(fontSize: 11.0,color: Colors.blue),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        color: Colors.blue,

                      )
                  ),
                  prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(fontSize: 11.0,
                  )),
            ),
                    ),

            SizedBox(
              height: 20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal:20),
                  alignment:Alignment.centerRight,
                  child:
                  Text('Forget password',
                    style: TextStyle(
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 170,

                child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('LOGIN'),
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
                  height: 40,
                ),

                Container(
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  //margin: EdgeInsets.symmetric(horizontal: 14),
                  child:
                  Text('or connect using:',
                    style: TextStyle(fontWeight: FontWeight.w400
                    ),
                  )
                ),
                 SizedBox(
                   height: 10,
                 ),
                 Row
                          (children:
                        [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 70),
                              child: Container(
                                  child: ElevatedButton.icon(
                                    icon: Icon(
                                      FontAwesomeIcons.facebookF,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                    label: Text('facebook'),
                                    onPressed: () {
                                    },
                                    style:
                                    ElevatedButton.styleFrom(
                                      primary: Colors.blue.shade700,
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0,
                                        ),
                                      ),
                                    ),
                                ),
                              ),
                          ),

                          Container(
                            child:
                            Center(
                              child: ElevatedButton.icon(
                                icon: Icon(
                                  FontAwesomeIcons.google,
                                  color: Colors.white,
                                  size: 12
                                  ,
                                ),

                                label: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('google'),
                                ),

                                onPressed: () {
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                        ),
                      SizedBox(
                        height: 80,
                      ),
                        Container(
                          child: Row

                            (children: [
                            Padding(padding: EdgeInsets.symmetric(horizontal: 60)),
                              Container(
                              child:Text('Dont you have an Account?'),
                     ),
                            InkWell(
                              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>sign_up()));},
                              child: Container(


                                child: Text(' Sign Up',

                                  style: TextStyle(color: Colors.red.shade900)

                                  ),
                                ),
                            ),
              ]
    ),
                        ),
        ],
    ),
          ),
    ),
      ),
    );
  }
}

