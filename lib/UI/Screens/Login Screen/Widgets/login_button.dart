import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.07,
      width: width * 0.83,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Center(
        child: Text(
          "Login",
          style: GoogleFonts.outfit(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: textWhite
          ),
        ),
      ),
    );
  }
}