import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class HeaderWithId extends StatelessWidget {
  const HeaderWithId({
    super.key,
    required this.userName,
  });

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 10,
          children: [
            CircleAvatar(
              backgroundColor: Color(0xFFEEF2F3),
              maxRadius: 48/2,
              minRadius: 48/2,
              child: Image.asset("assets/avatar.png"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello",
                  style: GoogleFonts.spaceGrotesk(
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                ),
                Text(
                  userName,
                  style: GoogleFonts.spaceGrotesk(
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                  ),
                ),
              ],
            ),
          ],
        ),
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Patient ID:", style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w400, fontSize: 14)),
            Text("1234", style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w500, fontSize: 16))
          ],
        )
      ],
    );
  }
}