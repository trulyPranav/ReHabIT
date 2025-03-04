import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpcomingScreen extends StatefulWidget {
  final List<String> exercises;
  const UpcomingScreen({required this.exercises, super.key});

  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  @override
  Widget build(BuildContext context) {
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
        ListView(
          shrinkWrap: true,  // This ensures ListView only takes as much space as it needs
          children: widget.exercises.map((exercise) {
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
      ],
    );
  }
}