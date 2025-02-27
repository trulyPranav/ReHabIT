import 'package:flutter/material.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class PatientHomeScreen extends StatefulWidget {
  final String name;
  const PatientHomeScreen({super.key, required this.name});

  @override
  State<PatientHomeScreen> createState() => _PatientHomeScreenState();
}

class _PatientHomeScreenState extends State<PatientHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
    );
  }
}