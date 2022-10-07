import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomTextField({
  required String initialTitle,
  required IconData icon,
  required VoidCallback onClick,

}) {
  return InkWell(
    onTap: onClick,
    //make state here for change animation in buttons
    child: Column(
      children: [
        TextFormField(
          cursorColor: Colors.teal,
          initialValue: initialTitle,
          maxLength: 20,
          decoration:
          InputDecoration(
            contentPadding: EdgeInsets.zero,
            icon: Icon(icon,
              color: Colors.blue,),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF6200EE)),
            ),
          ),
        ),
      ],
    ),
  );
}