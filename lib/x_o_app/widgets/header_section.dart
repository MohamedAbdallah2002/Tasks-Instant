
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  final int X;
  final int O;

  const HeaderSection({super.key, required this.X, required this.O});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tic Tac Toe',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          'Player X = $X',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          'Player O = $O',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}