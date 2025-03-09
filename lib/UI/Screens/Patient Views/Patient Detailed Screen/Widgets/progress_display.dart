import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Screens/Patient%20Views/Patient%20Detailed%20Screen/Widgets/Sub-Widgets/custom_drop_down.dart';

class ProgressDisplay extends StatelessWidget {
  const ProgressDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> weekFrame = [
      "This Week",
      "Past Week"
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Progress", style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w500, fontSize: 24)),
            CustomDropDown(timeFrame: weekFrame, valueToBeSelected: "Past Week",),
          ],
        ),
        Image.asset("assets/chart.png",fit: BoxFit.cover)
      ],
    );
  }
}