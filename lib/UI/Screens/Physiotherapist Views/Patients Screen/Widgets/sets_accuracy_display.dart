import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Patients%20Screen/Widgets/Sub-Widgets/circular_displayer.dart';
import 'package:rehabit/UI/Widgets/custom_drop_down.dart';

class SetsAccuracyDisplay extends StatelessWidget {
  final double matchPercentage; // <-- Add this

  const SetsAccuracyDisplay({super.key, required this.matchPercentage});

  @override
  Widget build(BuildContext context) {
    List<String> dateFrame = ["Yesterday", "Today", "Tomorrow"];
    
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Set 1", style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w500, fontSize: 24)),
            CustomDropDown(timeFrame: dateFrame, valueToBeSelected: "Today"),
          ],
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircularDisplayer(central: "${matchPercentage.toStringAsFixed(1)}%", title: "Training\nAccuracy"), // Updated
            SizedBox(width: 10),
            CircularDisplayer(central: "3", title: "Current Set"),
          ],
        ),
      ],
    );
  }
}
