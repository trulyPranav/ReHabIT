import 'package:flutter/material.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Screens/Login%20Screen/login_screen.dart';
import 'package:rehabit/UI/Screens/Selection%20Screen/Widgets/const_text.dart';
import 'package:rehabit/UI/Screens/Selection%20Screen/Widgets/user_selection_container.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            constText(),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(
                    userType: "Patient"
                  )
                )
              ),
              child: UserSelectionContainer(name: "Patient")
            ),
            SizedBox(height: 25,),
            GestureDetector(
              onTap: () => Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => LoginScreen(
                    userType: "Physiotherapist"
                  )
                )
              ),
              child: UserSelectionContainer(name: "Physiotherapist")
            )
          ],
        ),
      ),
    );
  }
}