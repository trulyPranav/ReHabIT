import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget loginDetailsText(){
  return Padding(
    padding: const EdgeInsets.only(left: 30.0),
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
  );
}