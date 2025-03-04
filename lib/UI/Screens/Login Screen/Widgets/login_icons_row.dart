import 'package:flutter/material.dart';
import 'package:rehabit/Services/Authentication/auth_service.dart';
import 'package:rehabit/UI/Screens/Login%20Screen/Widgets/login_icons.dart';
import 'package:rehabit/UI/Screens/Onboarding%20Screen/onboarding_screen.dart';
import 'package:rehabit/UI/Screens/Patient%20Views/patient_navbar.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/physio_navbar.dart';

class LoginIconsRow extends StatefulWidget {
  final String userType;
  const LoginIconsRow({super.key, required this.userType});

  @override
  State<LoginIconsRow> createState() => _LoginIconsRowState();
}

class _LoginIconsRowState extends State<LoginIconsRow> {
  final _auth = AuthService();
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        LoginIcons(location: "assets/email.png"),
        GestureDetector(
          onTap: () async {
            print("tapped");
            await _googleLogIn();
          },
          child: _isLoading
              ? CircularProgressIndicator()  // Show loading indicator
              : LoginIcons(location: "assets/google.png")
          ),
        LoginIcons(location: "assets/facebook.png")
      ],
    );
  }

  homeNav(BuildContext context, String userName) { 
    if (widget.userType == "Patient") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => PatientNavbar(userName: userName),
        ),
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(name: "Patient"),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => PhysioNavbar(userName: userName),
        ),
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(name: "Physiotherapist"),
        ),
      );
    }
  }
  
  _googleLogIn() async {
    try {
      setState(() {
        _isLoading = true;  // Start loading
      });
      final session = await _auth.loginWithGoogle();
      if (session != null && mounted) {
        String? userName = session.user?.displayName ?? "User404"; // Default name if not available
        homeNav(context, userName);
      } else {
        print("Google login failed");
      }
    } catch (e) {
      print("Error during Google login: $e");
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }
}