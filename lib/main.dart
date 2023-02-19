import 'package:designcode_project/componants/cards/recent_course_card.dart';
import 'package:designcode_project/model/course.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: ReacentCourseCard(
              course: recentCourses[2],
            ),
          ),
        ),
      ),
    );
  }
}


