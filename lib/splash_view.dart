
import 'package:flutter/material.dart';
import 'package:flutter_apps/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network("https://1.bp.blogspot.com/-9oEdNse-Jpg/XqGy4q33HII/AAAAAAAAAq0/b_1A9VJPdrAJANfxpBIlWHUqcaMC0-LfACLcBGAsYHQ/s1600/1.jpg"),
      ),
    );
  }
}