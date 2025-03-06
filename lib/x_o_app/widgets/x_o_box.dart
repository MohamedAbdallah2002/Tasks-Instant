import 'package:flutter/material.dart';

class XOBox extends StatefulWidget {
  final void Function(String turn) onpressed;
  const XOBox({super.key, required this.onpressed});

  @override
  State<XOBox> createState() => _XOBoxState();
}

class _XOBoxState extends State<XOBox> {
  String turn = 'X';
  List<dynamic> boxes = List.filled(9, '');
  String checkWinner() {
    if (boxes[0] == boxes[1] && boxes[0] == boxes[2] && boxes[0] != '') {
      return '${boxes[0]}wins';
    }
    if (boxes[3] == boxes[4] && boxes[3] == boxes[5] && boxes[3] != '') {
      return '${boxes[3]}wins';
    }
    if (boxes[6] == boxes[7] && boxes[6] == boxes[8] && boxes[6] != '') {
      return '${boxes[6]}wins';
    }
    //colums
    if (boxes[0] == boxes[3] && boxes[0] == boxes[6] && boxes[0] != '') {
      return '${boxes[0]}wins';
    }
    if (boxes[1] == boxes[4] && boxes[1] == boxes[7] && boxes[1] != '') {
      return '${boxes[1]}wins';
    }
    if (boxes[2] == boxes[5] && boxes[2] == boxes[8] && boxes[2] != '') {
      return '${boxes[2]}wins';
    }
    if (boxes[0] == boxes[4] && boxes[0] == boxes[8] && boxes[0] != '') {
      return '${boxes[0]}wins';
    }
    if (boxes[2] == boxes[4] && boxes[2] == boxes[6] && boxes[2] != '') {
      return '${boxes[2]}wins';
    }
    if (!boxes.contains('')) {
      return 'Draw';
    }

    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                if (boxes[index] == '') {
                  boxes[index] = turn;
                  turn = turn == 'X' ? 'O' : 'X';
                }
                String winner = checkWinner();
                if (winner != '') {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Game Over'),
                        content: Text(
                          winner == 'Draw'
                              ? 'It\'s a Draw! Try again.'
                              : 'Winner: $winner 🎉',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                boxes = List.filled(9, '');
                              });
                              Navigator.pop(context);
                            },
                            child: Text('play again'),
                          ),
                        ],
                      );
                    },
                  );
                  if (winner != 'Draw') {
                    widget.onpressed(winner);
                  }
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(width: 0.25),
              ),

              child: Center(
                child: Text(
                  boxes[index],
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
        itemCount: 9,
      ),
    );
  }
}
