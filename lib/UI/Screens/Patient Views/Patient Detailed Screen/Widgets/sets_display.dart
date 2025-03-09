import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Screens/Patient%20Views/Patient%20Detailed%20Screen/Widgets/Sub-Widgets/custom_drop_down.dart';
import 'package:rehabit/UI/Screens/Patient%20Views/Patient%20Detailed%20Screen/Widgets/Sub-Widgets/exercise_viewer.dart';

class SetsDisplay extends StatelessWidget {
  const SetsDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dateFrame = [
      "Yesterday",
      "Today",
      "Tomorrow"
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Set 1", style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w500, fontSize: 24)),
            CustomDropDown(timeFrame: dateFrame, valueToBeSelected: "Today"),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ExerciseViewer(exercise: "Fist Stretch"),
            ExerciseViewer(exercise: "Finger & thumb\nstretch")
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ExerciseViewer(exercise: "Fist Stretch"),
            ExerciseViewer(exercise: "Finger & thumb\nstretch")
          ],
        ),
      ],
    );
  }
}