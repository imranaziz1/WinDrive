import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomButton({
  required String title,
  // required IconData icon,
  required VoidCallback onClick,

}) {
  return InkWell(
    onTap: onClick,
    child: Container(

      alignment: Alignment.center,
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.teal,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSans(
              color: Color(0xff06161C),
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),),
  );
}