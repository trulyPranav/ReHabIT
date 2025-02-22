import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget constText (){
  return Text(
    "Are you a...",
    style: GoogleFonts.spaceGrotesk(
      color: Color(0xFF9B9B9B),
      fontWeight: FontWeight.w700,
      fontSize: 21
    ),
  );
}