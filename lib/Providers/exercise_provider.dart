import 'package:flutter/material.dart';

class ExerciseProvider extends ChangeNotifier{
    List<String> exercises = [
    "Fist Stretch",
    "Finger and Thumb Stretch",
    "Finger and Thumb Touch",
    "Thumbs-up",
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