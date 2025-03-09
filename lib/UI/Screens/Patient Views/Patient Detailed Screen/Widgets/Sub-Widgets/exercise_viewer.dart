import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class ExerciseViewer extends StatelessWidget {
  final String exercise;
  const ExerciseViewer({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.15,
      width: width * 0.42,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 10),
      decoration: BoxDecoration(
        color: primaryBackground,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Color(0xFFE8E8E8), width: 1)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text(exercise, style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w500, fontSize: 14, color: textBlack), textAlign: TextAlign.center,)),
          Row(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text("10", style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w500, fontSize: 32)),
              Text("REPS", style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w500, fontSize: 14))
            ],
          )
        ],
      ),
    );
  }
}