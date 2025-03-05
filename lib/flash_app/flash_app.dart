import 'package:flutter/material.dart';
import 'package:flutter_apps/widgets/custom_app_bar.dart';

class FlashApp extends StatefulWidget {
  const FlashApp({super.key});

  @override
  FlashAppState createState() => FlashAppState();
}

class FlashAppState extends State<FlashApp> {
  bool isLightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: "Flash App",
        color: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          spacing: 24,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lightbulb,
              size: 250,
              color: isLightOn ? Colors.yellowAccent : Colors.grey[300],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isLightOn = !isLightOn;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isLightOn ? Colors.redAccent : Colors.greenAccent,
              ),
              child: Text(
                isLightOn ? "OFF" : "ON",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
