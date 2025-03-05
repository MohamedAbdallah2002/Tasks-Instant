import 'package:flutter/material.dart';
import 'package:flutter_apps/widgets/custom_app_bar.dart';
import 'package:flutter_apps/x_o_app/widgets/header_section.dart';
import 'package:flutter_apps/x_o_app/widgets/x_o_box.dart';

class XOApp extends StatelessWidget {
  const XOApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: "X & O App", color: Colors.greenAccent),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [SizedBox(height: 100), HeaderSection(), XOBox()],
      ),
    );
  }
}