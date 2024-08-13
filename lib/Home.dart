import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          length: 3,
          child: Column(
            children: [
              Material(
                child: Container(
                  height: 70,
                  color: Colors.white,
                  child: TabBar(
                    physics: const ClampingScrollPhysics(),
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                    unselectedLabelColor: Colors.blueGrey,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
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
                    ListView.separated(
                      padding: EdgeInsets.all(15),
                      itemCount: 4,
                      separatorBuilder: (BuildContext context, int index) => const Divider(),
                      itemBuilder: (context, index){
                        return ListTile(
                          onTap: () {},
                          title: Text("Chat List $index"),
                          subtitle: Text("Tab bar ui"),
                          trailing: Icon(Icons.arrow_circle_right_sharp),
                        );
                      },
                    ),
                    ListView.separated(
                      padding: EdgeInsets.all(15),
                      itemCount: 4,
                      separatorBuilder: (BuildContext context, int index) => const Divider(),
                      itemBuilder: (context, index){
                        return ListTile(
                          onTap: () {},
                          title: Text("Status List $index"),
                          subtitle: Text("Tab bar ui"),
                          trailing: Icon(Icons.arrow_circle_right_sharp),
                        );
                      },
                    ),
                    ListView.separated(
                      padding: EdgeInsets.all(15),
                      itemCount: 4,
                      separatorBuilder: (BuildContext context, int index) => const Divider(),
                      itemBuilder: (context, index){
                        return ListTile(
                          onTap: () {},
                          title: Text("Call List $index"),
                          subtitle: Text("Tab bar ui"),
                          trailing: Icon(Icons.arrow_circle_right_sharp),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}