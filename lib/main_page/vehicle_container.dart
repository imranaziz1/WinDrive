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
      height: 80,
      width: 90,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black12,
      ),

      child: Column(
        children: [
          Image.asset(vehicleImage, height: 60,width: 70,),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSans(
              color: Color(0xff06161C),
              fontSize: 8,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    ),
  );
}