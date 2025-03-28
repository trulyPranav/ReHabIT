import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rehabit/Providers/exercise_provider.dart';
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
  int reps = 10;
  int currentExerciseIndex = 0;
  late Timer countdownTimer;
  late List<String> exercises;
  @override
  void dispose() {
    countdownTimer.cancel(); // Cancel countdown timer when widget disposed
    super.dispose();
  }

  void startCoundown(){
    setState(() {
      countdownStarted = true;
    });
    Provider.of<ExerciseProvider>(context, listen: false).startExercise();
    var countEnder = Provider.of<ExerciseProvider>(context, listen: false);
    bool confusion = false;
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (!confusion && count > 1) {
        setState(() {
          count--;
        });
      } else if (count == 1 && !confusion) {
        setState(() {
          count = 1;
          confusion = true;
        });
      } else if (confusion) {
        countEnder.countDownEnded();
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
      if (exercises.isNotEmpty) {
        _moveToNextExercise(0);  
      } // Start from the first exercise
    });
  }

  // Recursive shit
  void _moveToNextExercise(int index) {
    if (index < exercises.length && exercises.isNotEmpty) {
      setState(() {
        currentExerciseIndex = index;  // Moving to the current exercise
      });
      log(currentExerciseIndex.toString());
      // Delay for 1 minute before moving to the next exercise
      if (exercises[currentExerciseIndex] == "Finger Opposition - Little Finger" || exercises[currentExerciseIndex] == "Fist Strech - Extend your fingers"  ) {
        Future.delayed(Duration(seconds: 5), () {
          // Remove the completed exercise
          if (mounted) {
            Provider.of<ExerciseProvider>(context, listen: false)
                .removeExercise(exercises[0]);
          }
          _moveToNextExercise(index);  // Call the next exercise
        });
      } else {
        Future.delayed(Duration(seconds: 4), () {
          // Remove the completed exercise
          if (mounted) {
            Provider.of<ExerciseProvider>(context, listen: false)
                .removeExercise(exercises[0]);
          }
          _moveToNextExercise(index);  // Call the next exercise
        });
      }
    }
  }
  
  @override
  Widget build(BuildContext context) {
    exercises = Provider.of<ExerciseProvider>(context).exercises;
    bool coundownEnd = Provider.of<ExerciseProvider>(context).countEnd;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool started = Provider.of<ExerciseProvider>(context).started;
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Center(
        child: Column(
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
            if(countdownStarted && !coundownEnd)
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
            if(countdownStarted && coundownEnd && exercises.isNotEmpty)
              Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if(exercises.isNotEmpty)
                    if(exercises[currentExerciseIndex] == "Finger Opposition - Fore Finger")
                      Center(child: Image.asset("assets/fingerOpposition_F.png", height: 300, width: 300,)),
                    if(exercises[currentExerciseIndex] == "Finger Opposition - Middle Finger")
                      Center(child: Image.asset("assets/fingerOpposition_M.png", height: 300, width: 300,)),
                    if(exercises[currentExerciseIndex] == "Finger Opposition - Ring Finger")
                      Center(child: Image.asset("assets/fingerOpposition_R.png", height: 300, width: 300,)),
                    if(exercises[currentExerciseIndex] == "Finger Opposition - Little Finger")
                      Center(child: Image.asset("assets/fingerOpposition_L.png", height: 300, width: 300,)),
                    if(exercises[currentExerciseIndex] == "Fist Stretch - Make a fist")
                      Center(child: Image.asset("assets/fistStretch_MF.png", height: 300, width: 300,)),
                    if(exercises[currentExerciseIndex] == "Fist Strech - Extend your fingers")
                      Center(child: Image.asset("assets/fistStretch_EF.png", height: 300, width: 300,)),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: width*0.15),
                    child: Text(
                      "Current: ${exercises[currentExerciseIndex]}\n$reps reps\n1 min",
                      style: GoogleFonts.spaceGrotesk(
                        fontWeight: FontWeight.w700,
                        fontSize: 21,
                        color: textBlack
                      ),
                    )
                  ),
                ],
              ),
            if (exercises.isEmpty)
              Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width*0.15),
                    child: Text(
                      "All Done For Today!",
                      style: GoogleFonts.spaceGrotesk(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: textBlack
                      ),
                    ),
                  ),
                ],
              ),
            if(!started)
              Container(
                height: height * 0.39,
                width: width,
                padding: EdgeInsets.only(left: width*0.15),
                child: UpcomingScreen(),
              ),
            if(started)
              Container(
                width: width,
                padding: EdgeInsets.only(left: width*0.15),
                child: UpcomingScreen(),
              )
          ],
        ),
      ),
    );
  }
}
