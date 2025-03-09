import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class CustomDropDown extends StatefulWidget {
  final List<String> timeFrame;
  final String? valueToBeSelected;
  const CustomDropDown({super.key, required this.timeFrame, required this.valueToBeSelected});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  late String? selectedValue = widget.valueToBeSelected;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Text(
          selectedValue.toString(),
          style: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.w700,
            fontSize: 12,
            color: textBlack,
          ),
        ),
        items: widget.timeFrame
          .map((String frame) => DropdownMenuItem<String>(
            value: frame,
            child: Text(
              frame,
              style: GoogleFonts.spaceGrotesk(
                fontWeight: FontWeight.w700,
                fontSize: 12
              ),
            )
            )).toList(),
        value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        buttonStyleData: ButtonStyleData(
          height: 32,
          width: 115,
          padding: const EdgeInsets.only(left: 14, right: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: Color(0xFfE8E8E8),
            ),
            color: primaryBackground,
          ),
          elevation: 0,
        ),
        iconStyleData: IconStyleData(
          icon: Icon(
            Icons.keyboard_arrow_down_sharp,
          ),
          iconSize: 20,
          iconEnabledColor: textBlack,
          iconDisabledColor: textBlack,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Color(0xFfE8E8E8)),
            color: primaryBackground,
          ),
          offset: const Offset(-5, 0),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
      )
    );
  }
}