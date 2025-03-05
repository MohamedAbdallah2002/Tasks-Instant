import 'package:flutter/material.dart';

AppBar customAppBar({
  required BuildContext context, 
  required String title,
  required Color color,
}) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    title: Text(title,style: TextStyle(
      color: Colors.white,
      fontSize: 24
    ),),
    backgroundColor: color,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back,color: Colors.white,),
      onPressed: () {
        Navigator.pop(context); 
      },
    ),
  );
}
