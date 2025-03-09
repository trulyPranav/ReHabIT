import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class SettingContainer extends StatefulWidget {
  final String main;
  final String sub;
  const SettingContainer({
    required this.main,
    required this.sub,  
    super.key
  });

  @override
  State<SettingContainer> createState() => _SettingContainerState();
}

class _SettingContainerState extends State<SettingContainer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      width: width * 0.75,
      decoration: BoxDecoration(
        color: setContainer,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            widget.main.toUpperCase(),
            style: GoogleFonts.spaceGrotesk(
              fontWeight: FontWeight.w700,
              fontSize: 21,
              color: textBlack
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(2,0,2,0),
            color: textWhite,
            height: height * 0.03,
            width: width * 0.11,
            child: Center(
              child: Text(
                widget.main == "duration" ? "1" : "10",
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: textBlack
                ),
              ),
            ),
          ),
          Text(
            widget.sub.toUpperCase(),
            style: GoogleFonts.spaceGrotesk(
              fontWeight: FontWeight.w700,
              fontSize: 21,
              color: textBlack
            ),
          )
        ],
      ),
    );
  }
}