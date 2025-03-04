import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Screens/Patient%20Views/Widgets/patient_selector_container.dart';
import 'package:rehabit/UI/Screens/Patient%20Views/Widgets/upcoming_screen.dart';

class PatientHomeScreen extends StatefulWidget {
  final String name;
  const PatientHomeScreen({super.key, required this.name});

  @override
  State<PatientHomeScreen> createState() => _PatientHomeScreenState();
}

class _PatientHomeScreenState extends State<PatientHomeScreen> {
  bool countdownStarted = false;
  int count = 3;
  int currentExerciseIndex = 0;
  late Timer countdownTimer;

  List<String> exercises = [
    "Fist Stretch",
    "Finger and Thumb Stretch",
    "Finger and Thumb Touch",
    "Thumbs-up"
  ];

  @override
  void dispose() {
    countdownTimer.cancel(); // Cancel countdown timer when widget disposed
    super.dispose();
  }

  void startCoundown(){
    setState(() {
      countdownStarted = true;
    });
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (count >= 1) {
        setState(() {
          count--;
        });
      } else {
        // Countdown finished, show the first exercise and start the 1 minute timer
        countdownTimer.cancel();  // Stop the countdown
        setState(() {
          currentExerciseIndex = 0;  // Show the first exercise
        });
        startExerciseTimer();
      }
    });
  }

  // Start a timer for 1 minute before moving to the next exercise
  void startExerciseTimer() {
    // Start a loop to update the exercise every 1 minute (or 5 seconds for demo)
    Future.delayed(Duration(seconds: 0), () {
      _moveToNextExercise(0);  // Start from the first exercise
    });
  }

  // Recursive shit
  void _moveToNextExercise(int index) {
    if (index < exercises.length) {
      setState(() {
        currentExerciseIndex = index;  // Moving to the current exercise
      });
      
      // Delay for 1 minute (or adjust the time as needed) before moving to the next exercise
      Future.delayed(Duration(seconds: 5), () {
        _moveToNextExercise(index + 1);  // Calling the next exercise
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Column(
        spacing: 25,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!countdownStarted)
            Center(
              child: GestureDetector(
                onTap: startCoundown,
                child: PatientSelectorContainer(content: "START")
              ),
          ),
          if(countdownStarted && count > 0)
            Center(
              child: Text(
                "$count",
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w700,
                  fontSize: 120,
                  color: textBlack
                ),
              ),
            ),
          if(countdownStarted && count == 0)
            Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset("assets/fingerstretch.png")),
                Padding(
                  padding: EdgeInsets.only(left: width*0.15),
                  child: Text(
                    "Current: ${exercises[currentExerciseIndex]}\n10 reps\n1 min",
                    style: GoogleFonts.spaceGrotesk(
                      fontWeight: FontWeight.w700,
                      fontSize: 21,
                      color: textBlack
                    ),
                  ),
                ),
              ],
            ),
          Padding(
            padding: EdgeInsets.only(left: width*0.15),
            child: UpcomingScreen(exercises: exercises),
          )
        ],
      ),
    );
  }
}
