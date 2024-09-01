
import 'package:flutter/material.dart';
import 'package:loginsignup/app/features/dashboard/index/views/screens/dashboard_screen.dart';
import 'bottom_nav_bar.dart';
import 'LoginScreen.dart';
import 'Home.dart';
import 'Signup.dart';
import 'SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GIIH',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:Login(),
    );
  }
}



/*

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginsignup/app/config/routes/app_pages.dart';
import 'package:loginsignup/app/config/themes/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Games',
      theme: AppTheme.basic,
      initialRoute: AppPages.initial,
      getPages: AppPages.pages,
    );
  }
} */


