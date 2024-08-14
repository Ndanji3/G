import 'package:flutter/material.dart';

class general extends StatelessWidget {
  const general({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "This is a general Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}