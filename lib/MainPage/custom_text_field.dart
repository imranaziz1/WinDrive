import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomTextField({
  required BuildContext context,
  required VoidCallback onClick,
  required String initialTitle,
  required IconData icon,
}) {
  return InkWell(
    onTap: onClick,
    //make state here for change animation in buttons
    child: Column(
      children: [
        TextFormField(

          cursorColor: Colors.teal,
          initialValue: initialTitle,
          // maxLength: 20,
          decoration:
          InputDecoration(
            contentPadding: EdgeInsets.zero,
            icon: Icon(icon,
              color: Theme.of(context).primaryColor,),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
            ),
          ),
        ),
      ],
    ),
  );
}