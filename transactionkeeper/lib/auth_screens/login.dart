import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sign_up_screen.dart';

class DolapoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 300,
                        height: 150,
                        child: Image(
                          image: AssetImage('assets/images/login-illustration.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Welcome back!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Login to your existant account of the Transaction Keeper App',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 1.0,
                            color: Colors.blue,
                            // style: BorderStyle.none,
                          )
                      ),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.person_outline),
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      // controller: ,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              width: 1.0,
                              color: Colors.blue,
                              // style: BorderStyle.none,
                            )
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock_outline),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 15,
                        ),
                      )),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom : 10),
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Password?'),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 25),
            child: Column(children: [
              Container(
                width: 180,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('LOG IN'),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    primary: Colors.blue[900],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'or connect using',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    width: 120,
                    child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[900], // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(FontAwesomeIcons.facebookF,
                            size: 15,
                            ),
                            Text(
                              'facebook',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )),
                  ),
                  Container(
                    width: 120,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red[800], // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(FontAwesomeIcons.google,
                            size: 15,
                            ),
                            Text(
                              'Google',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ]),
          ),
          // SizedBox(
          //   height: 20,
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Don\'t have an account?'),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpp()));
              },
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.blue,
                fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),
        ]),
      ),
    );
  }
}
