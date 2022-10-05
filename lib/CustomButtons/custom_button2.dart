import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget custom_button({
  required String title,
  required IconData icon,
  required VoidCallback onClick,

}) {
  return Container(
      height: 50,
      width: 200,
      child: ElevatedButton(
        onPressed: onClick,
        child: Row(
          children: [
            Icon(icon),
            Text(title,textAlign: TextAlign.left,),
          ],
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            )
        ),
      )
  );
}