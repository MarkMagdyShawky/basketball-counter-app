import 'package:flutter/material.dart';

import '../../core/colorManager.dart';

class CustomButton extends StatelessWidget {
  final String btnName;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.btnName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        minimumSize: const Size(150, 50),
      ),
      child:  Text(
        btnName,
        style: TextStyle(
          color: Colors.black,
          fontSize: 19,
        ),
      ),
    );
  }
}
