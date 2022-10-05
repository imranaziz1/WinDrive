import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget custom_button({
  required String title,
 // required IconData icon,
  required VoidCallback onClick,

}) {
  return Container(
    height: 50,

    child: ElevatedButton(
      onPressed: onClick,
      child:
          Text(title,textAlign: TextAlign.center,),
      style: ElevatedButton.styleFrom(
        primary: Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        )
      ),
    )
  );
}