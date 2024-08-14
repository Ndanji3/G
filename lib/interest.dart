import 'package:flutter/material.dart';

class Interest extends StatelessWidget {
  const Interest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "This is an area of interest Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}