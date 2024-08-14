import 'package:flutter/material.dart';

class bot extends StatelessWidget {
  const bot({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "This is a chat bot Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}