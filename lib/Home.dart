import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginsignup/Ideators.dart';
import 'package:loginsignup/app/config/routes/app_pages.dart';
import 'Investors.dart';
import 'Academy.dart';



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
      home: MyHomePage(),
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
                        color: Colors.cyan
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
                            child: Text("Ideator"),
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



                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [


                    Ideators(),
                    Investors(),
                    Academy(),




                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}

