import 'package:flutter/material.dart';
import 'package:rehabit/UI/Constants/primary_spinkit.dart';
import 'package:rehabit/UI/Screens/Selection%20Screen/selection_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 5000), () {
      if (mounted) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SelectionScreen()));
}
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PrimarySpinkit(),
    );
  }
}