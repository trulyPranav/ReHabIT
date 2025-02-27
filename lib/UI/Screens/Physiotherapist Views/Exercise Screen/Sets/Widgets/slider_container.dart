import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class SliderContainer extends StatefulWidget {
  final String title;
  const SliderContainer({required this.title, super.key});

  @override
  State<SliderContainer> createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  double _currentValue = 100;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      width: width * 0.7,
      decoration: BoxDecoration(
        color: setContainer,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8,12,8,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title.toUpperCase(),
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
                  width: width * 0.13,
                  child: Center(
                    child: Text(
                      _currentValue.toInt().toString(),
                      style: GoogleFonts.spaceGrotesk(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: textBlack
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Slider(
            value: _currentValue,
            min: 100.0,
            max: 1000.0,
            divisions: 9,
            activeColor: textBlack,
            padding: EdgeInsets.all(10),
            onChanged: (double newValue){
              setState(() {
                _currentValue = newValue;
              });
            }
          )
        ],
      ),
    );
  }
}