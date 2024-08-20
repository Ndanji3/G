import 'package:flutter/material.dart';
import 'chat_bot.dart';
import 'general.dart';
import 'interest.dart';
import 'link_accounts.dart';
import 'Home.dart';
import 'Ideators.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<MyBottomNavBar> {
  int myCurrentIndex = 0;
  List pages = const [

    MyHomePage(),
    Accounts(),
    Interest(),
    general(),
    bot(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      appBar: AppBar(
        centerTitle: true,
        title: const Text("GIIH", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.grey),),
       backgroundColor: Colors.blue,
      ),


      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 25,
              offset: const Offset(8, 20))
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            // backgroundColor: Colors.transparent,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.black,
              currentIndex: myCurrentIndex,
              onTap: (index) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_tree_outlined), label: "link accounts"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: "area of interest"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet), label: "general"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.adb_outlined), label: "chat bot"),
              ]),
        ),
      ),
      body: pages[myCurrentIndex],
    );
  }
}