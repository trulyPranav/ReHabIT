import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Controllers/onboarding_controller.dart';

class NextOnboard extends StatelessWidget {
  const NextOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: getBottomBarHeight() - 20,
      right: 25,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.nextPage(context),
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(primaryColor)
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(55,5,55,5),
          child: Text(
            "Next",
            style: GoogleFonts.spaceGrotesk(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: textWhite,
            ),
          ),
        ),
      )
    );
  }
}