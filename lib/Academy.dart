import 'package:flutter/material.dart';

class Academy extends StatelessWidget {
  const Academy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "This is an academy Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}