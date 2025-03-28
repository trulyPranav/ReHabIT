import 'package:flutter/material.dart';

class ExerciseProvider extends ChangeNotifier{
    List<String> exercises = [
    "Finger Opposition - Fore Finger",
    "Finger Opposition - Middle Finger",
    "Finger Opposition - Ring Finger",
    "Finger Opposition - Little Finger",
    "Fist Stretch - Make a fist", 
    "Fist Strech - Extend your fingers", //1
    "Finger Opposition - Fore Finger",
    "Finger Opposition - Middle Finger",
    "Finger Opposition - Ring Finger",
    "Finger Opposition - Little Finger",
    "Fist Stretch - Make a fist",
    "Fist Strech - Extend your fingers", //2
    "Finger Opposition - Fore Finger",
    "Finger Opposition - Middle Finger",
    "Finger Opposition - Ring Finger",
    "Finger Opposition - Little Finger",
    "Fist Stretch - Make a fist",
    "Fist Strech - Extend your fingers", //3
    "Finger Opposition - Fore Finger",
    "Finger Opposition - Middle Finger",
    "Finger Opposition - Ring Finger",
    "Finger Opposition - Little Finger",
    "Fist Stretch - Make a fist",
    "Fist Strech - Extend your fingers", //4
    "Finger Opposition - Fore Finger",
    "Finger Opposition - Middle Finger",
    "Finger Opposition - Ring Finger",
    "Finger Opposition - Little Finger",
    "Fist Stretch - Make a fist",
    "Fist Strech - Extend your fingers", //5 
    "Finger Opposition - Fore Finger",
    "Finger Opposition - Middle Finger",
    "Finger Opposition - Ring Finger",
    "Finger Opposition - Little Finger",
    "Fist Stretch - Make a fist",
    "Fist Strech - Extend your fingers", //6
    "Finger Opposition - Fore Finger",
    "Finger Opposition - Middle Finger",
    "Finger Opposition - Ring Finger",
    "Finger Opposition - Little Finger",
    "Fist Stretch - Make a fist",
    "Fist Strech - Extend your fingers", //7
    "Finger Opposition - Fore Finger",
    "Finger Opposition - Middle Finger",
    "Finger Opposition - Ring Finger",
    "Finger Opposition - Little Finger",
    "Fist Stretch - Make a fist",
    "Fist Strech - Extend your fingers", //8
    "Finger Opposition - Fore Finger",
    "Finger Opposition - Middle Finger",
    "Finger Opposition - Ring Finger",
    "Finger Opposition - Little Finger",
    "Fist Stretch - Make a fist",
    "Fist Strech - Extend your fingers", //9
    "Finger Opposition - Fore Finger",
    "Finger Opposition - Middle Finger",
    "Finger Opposition - Ring Finger",
    "Finger Opposition - Little Finger",
    "Fist Stretch - Make a fist",
    "Fist Strech - Extend your fingers", //10
  ];
  bool started = false;
  bool countEnd = false;
  void startExercise(){
    started = true;
    notifyListeners();
  }
  void countDownEnded(){
    countEnd = true;
    notifyListeners();
  }
  void removeExercise(String exercise) {
    exercises.remove(exercise);
    notifyListeners();
  }
}