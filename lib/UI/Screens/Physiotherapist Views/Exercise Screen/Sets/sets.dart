import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Exercise%20Screen/Sets/Widgets/apply_changes.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Exercise%20Screen/Sets/Widgets/exercise_selector.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Exercise%20Screen/Sets/Widgets/setting_container.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Exercise%20Screen/Sets/Widgets/slider_container.dart';

class Sets extends StatefulWidget {
  final int setNo;
  final Function setFalse;
  const Sets({required this.setNo, required this.setFalse, super.key});

  @override
  State<Sets> createState() => _SetsState();
}

class _SetsState extends State<Sets> {
  // TODO: Implement firebase logic, the below is boilerplate:
  String? _selectedExercise;
  void setExercise(String exercise){
    setState(() {
      _selectedExercise = exercise;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Padding(
              padding: EdgeInsets.only(left: 35, top: 80),
              child: IconButton(
                onPressed: () {
                  widget.setFalse();
                },
                icon: Icon(Icons.arrow_back_ios, size: 30, color: textBlack,)
              ),
            ),
            Center(
              child: Text(
                "SET ${widget.setNo.toString()}",
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w700,
                  fontSize: 30
                ),
              )
            ),
            SizedBox(height: 10),
            Center(child: ExerciseSelector(setExercise: setExercise)),
            SizedBox(height: 20),
            Center(child: SliderContainer(title: "flex value")),
            SizedBox(height: 20),
            Center(child: SliderContainer(title: "force")),
            SizedBox(height: 20),
            Center(child: SettingContainer(main: "duration", sub: "min")),
            SizedBox(height: 20),
            Center(child: SettingContainer(main: "frequency", sub: "reps")),
            SizedBox(height: 30),
            Center(child: ApplyChanges())
        ],
      ),
    );
  }
}