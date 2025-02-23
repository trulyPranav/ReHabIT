import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageViewMain extends StatelessWidget {
  final String loc;
  final String title;
  final String subText;
  final Widget? buttonIfAny;
  const PageViewMain({super.key, required this.loc, this.buttonIfAny, required this.title, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 80, 25, 80),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            loc,
            height: 280,
            width: 293,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 50,
          ),
          Text(title, style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w700, fontSize: 32), textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Text(subText, style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w400, fontSize: 14), textAlign: TextAlign.center,),
          if (buttonIfAny != null) ...[
            SizedBox(height: 30),
            buttonIfAny!,
          ],
        ],
      ),
    );
  }
}