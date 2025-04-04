import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rehabit/Services/Database/realtime_data.dart';
import 'package:rehabit/UI/Constants/constants.dart';

class TempScreen extends StatefulWidget {
  const TempScreen({super.key});

  @override
  State<TempScreen> createState() => _TempScreenState();
}

class _TempScreenState extends State<TempScreen> {
  final RealtimeData _realtimeData = RealtimeData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Center(
        child: StreamBuilder(
          stream: _realtimeData.sensorData("sensor"),
          builder: (context, AsyncSnapshot<DatabaseEvent> snapshot){
            if(!snapshot.hasData || snapshot.data?.snapshot.value == null){
              return CircularProgressIndicator(color: primaryColor,);
            }
            var data = snapshot.data!.snapshot.value;
            return Text(
              data.toString(),
              style: GoogleFonts.spaceGrotesk(
                fontWeight: FontWeight.w700,
                fontSize: 30,
                color: textBlack
              ),
            );
          }
        ),
      ),
    );
  }
}