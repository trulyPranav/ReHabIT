import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';

Widget mainHeading(){
  return Center(
  child: Text(
    "Welcome to ReHabIT!",
    style: GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontSize: 30,
      color: textBlack
    ),
  ),
);
}