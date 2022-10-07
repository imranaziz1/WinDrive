import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomContainer({
  required String title,
  required String vehicleImage,
  required VoidCallback onClick,

}) {
  return InkWell(
    onTap: onClick,
    //make state here for change animation in buttons
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),

      child: Column(
        children: [
          Image.asset(vehicleImage, ),
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
      ),
    ),
  );
}