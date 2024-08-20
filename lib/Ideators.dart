import 'package:flutter/material.dart';

class Ideators extends StatelessWidget {
  const Ideators({super.key});



  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
  body: SingleChildScrollView(
  child: Container(
  padding: const EdgeInsets.symmetric(horizontal: 40),
  height: MediaQuery.of(context).size.height - 50,
  width: double.infinity,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
  const Column(
  children: <Widget>[
  SizedBox(height: 20.0),
  Text(
  "Create your account",
  style: TextStyle(fontSize: 20, color: Colors.black),
  )
  ],
  ),
  Column(
  children: <Widget>[
  TextField(
  decoration: InputDecoration(
  hintText: "Username",
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(18),
  borderSide: BorderSide.none),
  fillColor: Colors.grey.withOpacity(0.1),
  filled: true,
  prefixIcon: const Icon(Icons.person)),
  ),

  const SizedBox(height: 20),

  TextField(
  decoration: InputDecoration(
  hintText: "Email",
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(18),
  borderSide: BorderSide.none),
  fillColor: Colors.grey.withOpacity(0.1),
  filled: true,
  prefixIcon: const Icon(Icons.email)),
  ),

  const SizedBox(height: 20),

  TextField(
  decoration: InputDecoration(
  hintText: "Password",
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(18),
  borderSide: BorderSide.none),
  fillColor: Colors.grey.withOpacity(0.1),
  filled: true,
  prefixIcon: const Icon(Icons.password),
  ),
  obscureText: true,
  ),

  const SizedBox(height: 20),

  TextField(
  decoration: InputDecoration(
  hintText: "Confirm Password",
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(18),
  borderSide: BorderSide.none),
  fillColor: Colors.grey.withOpacity(0.1),
  filled: true,
  prefixIcon: const Icon(Icons.password),
  ),
  obscureText: true,
  ),
  ],
  ),
  Container(
  padding: const EdgeInsets.only(top: 3, left: 3),

  child: ElevatedButton(
  onPressed: () {
  },
  style: ElevatedButton.styleFrom(
  shape: const StadiumBorder(),
  padding: const EdgeInsets.symmetric(vertical: 16),
  backgroundColor: Colors.blue,
  )
  ,
  child: const Text(
  "CREATE",
  style: TextStyle(fontSize: 20),
  ),
  )
  )
  ]
  )
  )
  )
  )
  );
  }
  }