import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Widgets/selector_container.dart';

class ExerciseScreen extends StatelessWidget {
  final Function setExerciseFalse;
  const ExerciseScreen({required this.setExerciseFalse, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 35, top: 80),
            child: IconButton(
              onPressed: () {
                setExerciseFalse();
              },
              icon: Icon(Icons.arrow_back_ios, size: 30, color: textBlack,)
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50,15  ,50,0),
            child: Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Exercises",
                  style: GoogleFonts.spaceGrotesk(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
                SelectorContainer(content: "SET 1"),
                SelectorContainer(content: "SET 2"),
                SelectorContainer(content: "SET 3")
              ],
            ),
          ),
        ],
      ),
    );
  }
}