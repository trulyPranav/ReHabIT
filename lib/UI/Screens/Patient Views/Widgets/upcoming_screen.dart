import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rehabit/Providers/exercise_provider.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool started = Provider.of<ExerciseProvider>(context).started;
    bool countDownEnded = Provider.of<ExerciseProvider>(context).countEnd;
    List<String> exercises = Provider.of<ExerciseProvider>(context).exercises;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Upcoming...",
          style: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.w700,
            fontSize: 21,
            color: Color(0xFF9B9B9B)
          ),
        ),
        if(!started)
          ListView(
            shrinkWrap: true,  // This ensures ListView only takes as much space as it needs
            children: exercises.map((exercise) {
              return Text(
                "10x $exercise",
                  style: GoogleFonts.spaceGrotesk(
                    fontWeight: FontWeight.w700,
                    fontSize: 21,
                    color: Color(0xFF9B9B9B)
                  ),
              );
            }).toList(),
          ),
        if(started && !countDownEnded)
          Text(
            "10x ${exercises[0]}",
              style: GoogleFonts.spaceGrotesk(
                fontWeight: FontWeight.w700,
                fontSize: 21,
                color: Color(0xFF9B9B9B)
              ),
          ),
        if(started && exercises.length > 1 && countDownEnded)
          Text(
            "10x ${exercises[1]}",
              style: GoogleFonts.spaceGrotesk(
                fontWeight: FontWeight.w700,
                fontSize: 21,
                color: Color(0xFF9B9B9B)
              ),
          ),
        if(exercises.length <= 1)
          Text(
            "All Done!",
              style: GoogleFonts.spaceGrotesk(
                fontWeight: FontWeight.w700,
                fontSize: 21,
                color: Color(0xFF9B9B9B)
              ),
          )
        
      ],
    );
  }
}