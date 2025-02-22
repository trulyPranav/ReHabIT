import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget forgotPassword(){
  return Padding(
    padding: const EdgeInsets.only(top: 10, right: 30.0),
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
  );
}