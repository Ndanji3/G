// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                  "My Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/profile.jpeg'),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                  child: Text(
                    "Hey Milika!",
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        size: 22,
                        color: Colors.greenAccent,
                      ),
                      title: Text("My Accounts"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.payment_outlined,
                        size: 22,
                        color: Colors.greenAccent,
                      ),
                      title: Text("My Cards"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.loyalty,
                        size: 22,
                        color: Colors.greenAccent,
                      ),
                      title: Text("Transaction Details"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),)
          ],
        ));
  }
}