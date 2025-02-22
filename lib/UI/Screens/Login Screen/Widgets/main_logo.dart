import 'package:flutter/material.dart';
import 'package:rehabit/UI/Constants/constants.dart';

Widget mainLogo(){
  return Padding(
      padding: const EdgeInsets.only(top: 72.0),
      child: Center(
        child: Image.asset(
          "assets/mainlogo.png",
          color: textBlack,
          height: 130,
          fit: BoxFit.cover,
        )
      ),
    );
}