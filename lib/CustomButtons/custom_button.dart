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
       height: 50,
       width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.teal,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSans(
              color: Color(0xff06161C),
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    ),
  );
}