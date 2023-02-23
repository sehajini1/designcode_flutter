import 'dart:math';
import 'package:designcode_project/componants/cards/continue_watching_card.dart';
import 'package:designcode_project/componants/certificate_viewer.dart';
import 'package:designcode_project/componants/lists/continue_watching_lists.dart';
import 'package:designcode_project/constants.dart';
import 'package:designcode_project/model/course.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ContinueWatchingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(34.0),
      ),
      color: kCardPopupBackgroundColor,
      boxShadow: [
        BoxShadow(
            color: kShadowColor, offset: Offset(0, -12), blurRadius: 32.0),
      ],
      minHeight: 85.0,
      maxHeight: MediaQuery.of(context).size.height * 0.75,
      panel: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 12.0, bottom: 16.0),
              child: Container(
                width: 42.0,
                height: 4.0,
                decoration: BoxDecoration(
                  color: Color(0xFFC5CBD6),
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              "Continue Watching",
              style: kTitle1Style,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: ContinueWatchingList(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              "Certificates",
              style: kTitle1Style,
            ),
          ),
          Expanded(child: CertificateViewer()),
        ],
      ),
    );
  }
}