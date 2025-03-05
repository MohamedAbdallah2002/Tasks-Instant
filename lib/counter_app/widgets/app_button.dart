import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.txt, required this.onPressed, required this.backButton,
  });
  final String txt;
  final Function() onPressed;
  final Color backButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backButton,
          padding: EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 20,
          ),
        ),
        onPressed: onPressed,
        child: Text(txt,style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
