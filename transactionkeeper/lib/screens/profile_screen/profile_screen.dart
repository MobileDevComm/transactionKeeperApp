import 'package:flutter/material.dart';

class Profile_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.blue[900],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.edit_outlined,
                      size: 25,
                      color: Colors.blue[900],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/person-image.png'),
                      radius: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Emma Phillips',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Fashion Model',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 20,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          '(581)-307-6902',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail_outline,
                        size: 20,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'emma.phillips@gmail.com',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(color: Colors.grey, width: 1),),
              ),
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          '\$140.00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900],
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Wallet',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 70,
                    color: Colors.grey,
                  ),
                  Container(
                      child: Column(
                    children: [
                      Text(
                        '12',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text('Orders',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 12,
                          ))
                    ],
                  ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Column(children: [
                Click(color:Colors.blue, text: 'Your Favorites', icon: Icons.favorite_border_outlined, coloor: Colors.blue[900]),
                Click(color:Colors.blue, text:'Payment', icon:Icons.account_balance_wallet_outlined, coloor: Colors.blue[900]),
                Click(color:Colors.blue, text:'Tell Your Friend', icon:Icons.people_alt_outlined, coloor: Colors.blue[900]),
                Click(color:Colors.blue, text:'Promotions', icon:Icons.local_offer_outlined, coloor: Colors.blue[900]),
                Click(color:Colors.blue, text:'Settings', icon:Icons.settings, coloor: Colors.blue[900]),
                Divider(
                  height: 2,
                  color: Colors.grey,
                  thickness: 1.0,
                ),
                Click(color: Colors.red, text: 'Log Out', icon: Icons.power_settings_new, coloor: Colors.red),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class Click extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;
  final Color coloor;
  Click({
    this.coloor,
    this.color,
    this.text,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: () {},
      child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 20,
                  color: color,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: coloor,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
