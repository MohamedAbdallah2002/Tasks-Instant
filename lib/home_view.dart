import 'package:flutter/material.dart';
import 'package:flutter_apps/counter_app/counter_app.dart';
import 'package:flutter_apps/flash_app/flash_app.dart';
import 'package:flutter_apps/widgets/custom_button.dart';
import 'package:flutter_apps/x_o_app/x_o_app.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 24,
            children: [
              CustomButton(
                bgColor: Colors.blueAccent,
                nameButton: "Counter App",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CounterApp()),
                  );
                },
              ),
              CustomButton(
                bgColor: Colors.redAccent,
                nameButton: "Flash App",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FlashApp()),
                  );
                },
              ),
              CustomButton(
                bgColor: Colors.greenAccent,
                nameButton: "X & O App",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const XOApp()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
