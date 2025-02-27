import 'package:flutter/material.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Screens/Login%20Screen/Widgets/forgot_password.dart';
import 'package:rehabit/UI/Screens/Login%20Screen/Widgets/login_button.dart';
import 'package:rehabit/UI/Screens/Login%20Screen/Widgets/login_icons_row.dart';
import 'package:rehabit/UI/Screens/Login%20Screen/Widgets/main_heading.dart';
import 'package:rehabit/UI/Screens/Login%20Screen/Widgets/sign_up_row.dart';
import 'package:rehabit/UI/Screens/Login%20Screen/Widgets/text_controller.dart';
import 'package:rehabit/UI/Screens/Login%20Screen/Widgets/login_details_text.dart';
import 'package:rehabit/UI/Screens/Login%20Screen/Widgets/main_logo.dart';
import 'package:rehabit/UI/Screens/Onboarding%20Screen/onboarding_screen.dart';
import 'package:rehabit/UI/Screens/Patient%20Views/Home%20Screen/patient_home_screen.dart';
import 'package:rehabit/UI/Screens/Patient%20Views/patient_navbar.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/physio_navbar.dart';

class LoginScreen extends StatefulWidget {
  final String userType;
  const LoginScreen({required this.userType, super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final username= TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryBackground,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              "assets/wave.png"
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              mainLogo(),
              SizedBox(height: 15),
              mainHeading(),
              SizedBox(height: 35),
              loginDetailsText(),
              SizedBox(height: 15),
              TextController(controller: username, hintText: "Username, email or phone-number"),
              SizedBox(height: 15),
              TextController(controller: password, hintText: "Password"),
              forgotPassword(),
              SizedBox(height: 30),
              //TODO: Remove this Login
              GestureDetector(
                onTap: () {
                  if (widget.userType == "Patient") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PatientNavbar(userName: "Rizgan"),
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
                        builder: (context) => PhysioNavbar(userName: "Rizgan"),
                      ),
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnboardingScreen(name: "Physiotherapist"),
                      ),
                    );
                  }
                },
                child: LoginButton()
              ),
              SizedBox(height: 40),
              signUpRow(),
              SizedBox(height: 25),
              LoginIconsRow(userType: widget.userType)
            ],
          )
        ],
      ),
    );
  }
}