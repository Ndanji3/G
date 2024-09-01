import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:loginsignup/app/config/routes/app_pages.dart';
import 'package:loginsignup/app/config/themes/app_theme.dart';

class bot extends StatelessWidget {
  const bot({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Games',
      theme: AppTheme.basic,
      initialRoute: AppPages.initial,
      getPages: AppPages.pages,
    );
  }
}