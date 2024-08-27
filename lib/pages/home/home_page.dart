import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginsignup/pages/home/widgets/app_bar.dart';
import 'package:loginsignup/pages/home/widgets/books_list.dart';
import 'package:loginsignup/pages/home/widgets/fab.dart';
import 'package:loginsignup/pages/home/widgets/header.dart';
import 'package:loginsignup/pages/home/widgets/icons_list.dart';
import 'package:loginsignup/pages/home/widgets/navigation_bar.dart';
import 'package:loginsignup/pages/home/widgets/new_book.dart';
import 'package:loginsignup/pages/home/widgets/search_bar.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp( Home());
}

class Home extends StatelessWidget {
   Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      //Now we will build the body
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...buildHeader(),
            buildSearchBar(),
            buildIconsList(),
            BuildBookList(),
            BuildNewBook(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BuildFAB(),
      bottomNavigationBar: buildNavigationBar(),
    );
  }
}
