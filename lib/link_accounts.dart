import 'package:flutter/material.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Card(
          elevation: 0,
          color: Colors.blue,
          child: SizedBox(
            width: 300,
            height: 150,
            child: Center(child: Text('Link Account')),
          ),
        ),
      ),
    );
  }
  }