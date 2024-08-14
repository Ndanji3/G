import 'package:flutter/material.dart';

class Kids extends StatelessWidget {
  const Kids({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "This is a kids Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}