import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class UserSelectionContainer extends StatelessWidget {
  final String name;
  const UserSelectionContainer({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.09,
      width: width * 0.55,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text(
          '$name?',
          style: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.w700,
            color: textWhite,
            fontSize: 21
          ),
        )
      ),
    );
  }
}