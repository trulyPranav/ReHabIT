import 'package:flutter/material.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Screens/Patient%20Views/Patient%20Detailed%20Screen/Widgets/header.dart';
import 'package:rehabit/UI/Screens/Patient%20Views/Patient%20Detailed%20Screen/Widgets/progress_display.dart';
import 'package:rehabit/UI/Screens/Patient%20Views/Patient%20Detailed%20Screen/Widgets/sets_display.dart';

class PatientDetailedScreen extends StatelessWidget {
  final String userName;
  const PatientDetailedScreen({required this.userName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Header(userName: userName),
              SizedBox(height: 20),
              SetsDisplay(),
              SizedBox(height: 19),
              ProgressDisplay()
            ],
          ),
        ),
      ),
    );
  }
}