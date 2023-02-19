import 'package:designcode_project/componants/sidebar_row.dart';
import 'package:designcode_project/constants.dart';
import 'package:designcode_project/model/sidebar.dart';
import 'package:designcode_project/screens/sidebar_screen.dart';
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
        body: SidebarScreen(),
      ),
    );
  }
}