
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.onPressed, required this.nameButton, required this.bgColor,
  });
final void Function()? onPressed;
final String nameButton;
final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: Size(double.infinity, 65) ,
        
      ),
      onPressed: onPressed, child: Text(nameButton,
      style: TextStyle(
        color: Colors.white,
        fontSize: 24
      ),));
  }
}