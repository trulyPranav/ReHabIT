import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Controllers/onboarding_controller.dart';

class SkipOnboard extends StatelessWidget {
  const SkipOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: getBottomBarHeight() - 20,
      left: 25,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(color: primaryColor, width: 1),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(55,5,55,5),
          child: Text(
            "Skip",
            style: GoogleFonts.spaceGrotesk(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: primaryColor,
            ),
          ),
        ),
      )
    );
  }
}