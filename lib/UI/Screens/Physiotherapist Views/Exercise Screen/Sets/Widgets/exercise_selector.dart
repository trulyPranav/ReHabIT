import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class ExerciseSelector extends StatefulWidget {
  final Function setExercise;
  const ExerciseSelector({required this.setExercise, super.key});

  @override
  State<ExerciseSelector> createState() => _ExerciseSelectorState();
}

class _ExerciseSelectorState extends State<ExerciseSelector> {
  
  List<String> exercises = [
    "Thumbs Up",
    "Finger and\nThumb Stretch",
    "Fist Stretch",
    "Finger Stretch"
  ];

  int currentIndex = 0;
  late int exerciseSize = exercises.length;


  @override
  void initState() {
    super.initState();
    // Initialize exerciseSize in initState to ensure 'exercises' is available
    exerciseSize = exercises.length;
  }

  void _previousText() {
    setState(() {
      // Finally Data Structures to the Rescuee
      currentIndex = (currentIndex - 1 + exerciseSize) % exerciseSize;
    });
  }

  void _nextText() {
    setState(() {
      currentIndex = (currentIndex + 1) % exerciseSize;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      height: height * 0.1,
      width: width * 0.7,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => _previousText(),
            child: Icon(Icons.arrow_back_ios, color: textWhite)
          ),
          Text(
            exercises[currentIndex],
            style: GoogleFonts.spaceGrotesk(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: textWhite
            ),
            textAlign: TextAlign.center,
          ),
          GestureDetector(
            onTap: () =>  _nextText(),
            child: Icon(Icons.arrow_forward_ios, color: textWhite)
          )
        ],
      ),
    );
  }
}