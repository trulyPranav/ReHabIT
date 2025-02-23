import 'package:flutter/material.dart';
import 'package:rehabit/UI/Screens/Onboarding%20Screen/Onboading%20Types/patient_onboarding.dart';
import 'package:rehabit/UI/Screens/Onboarding%20Screen/Onboading%20Types/physiotherapist_onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  final String name;
  const OnboardingScreen({
    required this.name,
    super.key
  });

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return widget.name == "Patient" ? 
    PatientOnboarding(name: widget.name) : 
    PhysiotherapistOnboarding(name: widget.name,);
  }
}