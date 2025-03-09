import 'package:flutter/material.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Patients%20Screen/Widgets/header_with_id.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Patients%20Screen/Widgets/progress_doc_display.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Patients%20Screen/Widgets/sets_accuracy_display.dart';

class PatientViewScreen extends StatelessWidget {
  final String userName;
  const PatientViewScreen({required this.userName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HeaderWithId(userName: userName),
              SetsAccuracyDisplay(),

              ProgressDocDisplay()
            ],
          ),
        ),
      ),
    );
  }
}