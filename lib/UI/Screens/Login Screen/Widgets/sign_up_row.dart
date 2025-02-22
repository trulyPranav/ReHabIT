import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget signUpRow(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    spacing: 3,
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
  );
}