import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginsignup/Ideators.dart';
import 'package:loginsignup/Investors.dart';
import 'package:loginsignup/constants/color.dart';
import 'package:loginsignup/models/course.dart';
import 'package:loginsignup/screens/course_screen.dart';
import 'package:loginsignup/screens/details_screen.dart';

class Ideators extends StatefulWidget {
  const Ideators({Key? key}) : super(key: key);

  @override
  _IdeatorsState createState() => _IdeatorsState();
}

class _IdeatorsState extends State<Ideators> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          'Add Idea',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: CustomIconButton(
                          height: 50,
                          width: 50,
                          onTap: () => Navigator.pop(context),
                          child: const Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    separatorBuilder: (_, __) {
                      return const SizedBox(
                        height: 16,
                      );
                    },
                    shrinkWrap: true,
                    itemBuilder: (_, int index) {
                      return CourseContainer(
                        course: courses[index],
                      );
                    },
                    itemCount: courses.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}