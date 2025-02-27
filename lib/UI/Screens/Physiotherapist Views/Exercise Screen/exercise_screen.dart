import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Exercise%20Screen/Sets/sets.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Widgets/selector_container.dart';

class ExerciseScreen extends StatefulWidget {
  final Function setExerciseFalse;
  const ExerciseScreen({required this.setExerciseFalse, super.key});

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  bool _isSetTrue = false;
  void setFalse(){
    setState(() {
      _isSetTrue = false;
    });
  }
  late int _setNo;
  @override
  Widget build(BuildContext context) {
    if (_isSetTrue == false) {
      return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 35, top: 80),
              child: IconButton(
                onPressed: () {
                  widget.setExerciseFalse();
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
                  GestureDetector(
                    onTap: () {
                      _setNo = 1;
                      setState(() {
                        _isSetTrue = true;
                      });
                    },
                    child: SelectorContainer(content: "SET 1")
                  ),
                  GestureDetector(
                    onTap: () {
                      _setNo = 2;
                      setState(() {
                        _isSetTrue = true;
                      });
                    },
                    child: SelectorContainer(content: "SET 2")
                  ),
                  GestureDetector(
                    onTap: () {
                      _setNo = 3;
                      setState(() {
                        _isSetTrue = true;
                      });
                    },
                    child: SelectorContainer(content: "SET 3")
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Sets(setNo: _setNo, setFalse: setFalse);
    }
  }
}