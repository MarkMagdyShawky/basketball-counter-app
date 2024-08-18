import 'package:flutter/material.dart';

class CustomTeamName extends StatelessWidget {
  final String TeamName;
  const CustomTeamName({super.key, required this.TeamName});

  @override
  Widget build(BuildContext context) {
    return  Text(
      TeamName,
      style: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
