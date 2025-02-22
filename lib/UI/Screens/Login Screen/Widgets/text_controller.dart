import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class TextController extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;

  const TextController({
    required this.controller,
    required this.hintText,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintFadeDuration: Durations.medium2,
          hintStyle: GoogleFonts.outfit(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: formFieldBorder,
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: formFieldBorder,
            )
          )
        ),
      ),
    );
  }
}