import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class PatientSelectorContainer extends StatelessWidget {
  final String content;
  const PatientSelectorContainer({required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      width: width * 0.7,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text(
          content,
          style: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.w700,
            fontSize: 34,
            color: textWhite
          ),
        ),
      ),
    );
  }
}