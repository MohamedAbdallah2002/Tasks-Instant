import 'package:flutter/material.dart';
import 'package:flutter_apps/splash_view.dart';

void main() {
  runApp(const FlutterApps());
}
class FlutterApps extends StatelessWidget {
  const FlutterApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
