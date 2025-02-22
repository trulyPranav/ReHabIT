import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class PrimarySpinkit extends StatelessWidget {
  const PrimarySpinkit({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.staggeredDotsWave(
        color: primaryColor,
        size: 50
      ),
    );
  }
}