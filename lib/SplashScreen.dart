import 'dart:async';
import 'package:loginsignup/Home.dart';
import 'LoginScreen.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{

  splashScreenTimer()
  {
    Timer(const Duration(seconds: 4), () async
    {
      //user is already logged-in
      {
        Navigator.push(context, MaterialPageRoute(builder: (c)=> Login()));
      }

    });
  }

  @override
  void initState() //called automatically when user comes here to this splash screen
  {
    super.initState();

    splashScreenTimer();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('assets/splashimg.jpg')),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.15),
                      Colors.black.withOpacity(0.5),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                )
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Image(
                  height: 300,
                  width: 300,
                  image: AssetImage('assets/Group 3890.png'))),///thankyou
        ],
      ),
    );
  }
}