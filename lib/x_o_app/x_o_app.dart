
import 'package:flutter/material.dart';
import 'package:flutter_apps/widgets/custom_app_bar.dart';
import 'package:flutter_apps/x_o_app/widgets/header_section.dart';
import 'package:flutter_apps/x_o_app/widgets/x_o_box.dart';

class XOApp extends StatefulWidget {
  const XOApp({super.key});

  @override
  State<XOApp> createState() => _XOAppState();
}

class _XOAppState extends State<XOApp> {
  int playerXscore = 0;
  int playerOscore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: customAppBar(context: context, title: "X & O App", color: Colors.greenAccent),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                HeaderSection(X: playerXscore, O: playerOscore),
                XOBox(
                  onpressed: (String turn) {
                    if (turn == 'Xwins') {
                      setState(() {
                        playerXscore++;
                      });
                    } else if (turn == 'Owins') {
                      setState(() {
                        playerOscore++;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

