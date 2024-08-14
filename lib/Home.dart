import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'LoginScreen.dart';
import 'Signup.dart';
import 'package:get/get.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 1,
          title: Text("GIIH", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.grey),),
        ),
        body:DefaultTabController(
          length: 7,
          child: Column(
            children: [
              Material(
                child: Container(
                  height: 70,
                  color: Colors.white,
                  child: TabBar(
                    physics: const ClampingScrollPhysics(),
                    padding: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
                    unselectedLabelColor: Colors.blueGrey,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.greenAccent
                    ),
                    tabs: [
                      Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.blue, width: 1)
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Kids"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.blue, width: 1)
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Academy"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.blue, width: 1)
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Investors"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [

                    Login(),
                    Signup(),
                    Signup(),

                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}