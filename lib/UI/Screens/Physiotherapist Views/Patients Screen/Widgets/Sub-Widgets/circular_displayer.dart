import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class CircularDisplayer extends StatelessWidget {
  final String central;
  final String title;
  const CircularDisplayer({super.key, required this.central, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        CircleAvatar(
          backgroundColor: Color(0xFFD9D9D9),
          maxRadius: 60,
          minRadius: 60,
          child: Text(
            central,
            style: GoogleFonts.spaceGrotesk(
              fontWeight: FontWeight.w500,
              fontSize: 30,
              color: textBlack
            ),
          ),
        ),
        Text(title, style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w500, fontSize: 15),textAlign: TextAlign.center,)
      ],
    );
  }
}