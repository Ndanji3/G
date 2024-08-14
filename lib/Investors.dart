import 'package:flutter/material.dart';

class Investors extends StatelessWidget {
  const Investors({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "This is an Investors Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}