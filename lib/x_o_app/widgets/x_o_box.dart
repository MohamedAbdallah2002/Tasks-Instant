
import 'package:flutter/material.dart';

class XOBox extends StatefulWidget {
  const XOBox({super.key});

  @override
  State<XOBox> createState() => _XOBoxState();
}

class _XOBoxState extends State<XOBox> {
  List<String> boxes = List.filled(9, "");
  String turn = "X";
  // String checkWinner(){}
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
         
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                if (boxes[index] == "") {
                  boxes[index] = turn;
                  turn = turn == "X" ? "O" : "X";
                }
              });
            },
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38,width: 0.5),
                color: Colors.blueAccent),
              child: Center(
                child: Text(
                  boxes[index],
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
