import 'package:flutter/material.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "This is a link accounts Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}