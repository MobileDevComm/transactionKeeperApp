import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transactionkeeper/widget/inkwell_buttons.dart';

class PraiseProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_outlined),
                      color: Colors.blue[900],
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.pencilAlt,
                      ),
                      iconSize: 20.0,
                      onPressed: () {},
                      color: Colors.blue[900],
                    ),
                  ],
                ),
              ),
              Container(
                height: 220,
                // color: Colors.red,
                padding: const EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('images/tofunmi.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    30.0, 8.0, 30.0, 12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Emma Phillips',
                                      style: TextStyle(
                                          color: Colors.blue[900],
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Fashion Model',
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Colors.blueGrey,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    '(581)-307-6902',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: Colors.black45,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'emma.philips@gmail.com',
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 2.0,
                height: 2.0,
              ),
              Container(
                alignment: Alignment.center,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '\$140.00',
                            style: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Wallet',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 2,
                      color: Colors.white,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '12',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                              color: Colors.blue[900],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Orders',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 2.0,
                height: 2.0,
              ),
              Container(
                height: 270,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Inkwells(
                      icon: Icons.favorite_border,
                      text: 'Your Favorites',
                      color: Colors.blue[900],
                    ),
                    Inkwells(
                      icon: Icons.account_balance_wallet_outlined,
                      text: 'Payment',
                      color: Colors.blue[900],
                    ),
                    Inkwells(
                      icon: Icons.local_offer_outlined,
                      text: 'Tell Your Friend',
                      color: Colors.blue[900],
                    ),
                    Inkwells(
                      icon: Icons.tag,
                      text: 'Promotions',
                      color: Colors.blue[900],
                    ),
                    Inkwells(
                      icon: Icons.settings_outlined,
                      text: 'Settings',
                      color: Colors.blue[900],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 2.0,
                height: 2.0,
              ),
              Container(
                child: Inkwells(
                  color: Colors.red[900],
                  text: 'Log out',
                  icon: Icons.power_settings_new,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
