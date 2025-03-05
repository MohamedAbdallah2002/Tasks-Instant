import 'package:flutter/material.dart';
import 'package:flutter_apps/counter_app/widgets/app_button.dart';
import 'package:flutter_apps/widgets/custom_app_bar.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: "Counter App", color: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "$counter",
              style: TextStyle(color: Colors.blue, fontSize: 150),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    AppButton(
                      backButton: Colors.green,
                      txt: "+1",
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                    ),
                    AppButton(
                      backButton: Colors.green,
                      txt: "+2",
                      onPressed: () {
                        setState(() {
                          counter += 2;
                        });
                      },
                    ),
                    AppButton(
                      backButton: Colors.green,
                      txt: "+3",
                      onPressed: () {
                        setState(() {
                          counter += 3;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 250,
                  child: VerticalDivider(
                    color: Colors.blueGrey,
                    thickness: 0.25,
                    indent: 16,
                    endIndent: 16,
                  ),
                ),
                Column(
                  children: [
                    AppButton(
                      backButton: Colors.red,
                      txt: "-1",
                      onPressed: () {
                        setState(() {
                          if (counter > 0) {
                            counter -= 1;
                          } else {
                            counter = 0;
                          }
                        });
                      },
                    ),
                    AppButton(
                      backButton: Colors.red,
                      txt: "-2",
                      onPressed: () {
                        setState(() {
                          if (counter > 0) {
                            counter -= 2;
                          } else {
                            counter = 0;
                          }
                        });
                      },
                    ),
                    AppButton(
                      backButton: Colors.red,
                      txt: "-3",
                      onPressed: () {
                        setState(() {
                          if (counter > 0) {
                            counter -= 3;
                          } else {
                            counter = 0;
                          }
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            AppButton(
              txt: "Rest",
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              backButton: Colors.amberAccent,
            ),
          ],
        ),
      ),
    );
  }
}
