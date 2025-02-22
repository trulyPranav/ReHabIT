import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Screens/Login%20Screen/Widgets/login_button.dart';
import 'package:rehabit/UI/Screens/Login%20Screen/Widgets/login_icons.dart';
import 'package:rehabit/UI/Screens/Login%20Screen/Widgets/text_controller.dart';

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
      backgroundColor: primaryBackground,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Center(
                  child: Image.asset(
                    "assets/mainlogo.png",
                    color: textBlack,
                    height: 130,
                    fit: BoxFit.cover,
                  )
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Welcome to ReHabIT!",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: textBlack
                  ),
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login Details",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 24
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextController(controller: username, hintText: "Username, email or phone-number"),
              SizedBox(
                height: 15,
              ),
              TextController(controller: password, hintText: "Password"),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 50.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forgot Password ?",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFF635C5C)
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              LoginButton(),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5,
                children: [
                  Image.asset(
                    "assets/designLeft.png"
                  ),
                  Text(
                    "Or Sign up With",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 12
                    ),
                  ),
                  Image.asset(
                    "assets/designRight.png"
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  LoginIcons(location: "assets/email.png"),
                  LoginIcons(location: "assets/google.png"),
                  LoginIcons(location: "assets/facebook.png")
                ],
              ),
            ],
          ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(
                  "assets/wave.png"
                ),
              )
        ],
      ),
    );
  }
}