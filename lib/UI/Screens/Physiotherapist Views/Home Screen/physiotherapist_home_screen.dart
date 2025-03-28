import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Exercise%20Screen/exercise_screen.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Widgets/selector_container.dart';

class PhysiotherapistHomeScreen extends StatefulWidget {
  final String name;
  const PhysiotherapistHomeScreen({super.key, required this.name});

  @override
  State<PhysiotherapistHomeScreen> createState() => _PhysiotherapistHomeScreenState();
}

class _PhysiotherapistHomeScreenState extends State<PhysiotherapistHomeScreen> {
  bool _isExercise = false;
  void setExerciseFalse(){
    setState(() {
      _isExercise = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (_isExercise == false) {
      return Scaffold(
        backgroundColor: primaryBackground,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(50,100,50,0),
          child: Column(
            spacing: 25,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello ${widget.name}!",
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
              SelectorContainer(content: "PATIENTS"),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isExercise = true;
                  });
                },
                child: SelectorContainer(content: "EXERCISES")
              ),
              // SelectorContainer(content: "PROGRESS REPORTS")
            ],
          ),
        ),
      );
    } else {
      return ExerciseScreen(setExerciseFalse: setExerciseFalse);
    }
  }
}