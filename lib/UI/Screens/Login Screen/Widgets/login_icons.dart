import 'package:flutter/material.dart';

class LoginIcons extends StatelessWidget {
  final String location;
  const LoginIcons({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: 25,
      maxRadius: 25,
      backgroundColor: Color(0xFFECE9EC),
      child: Image.asset(
        location
      ),
    );
  }
}