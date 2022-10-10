import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomButton({
  required String title,
  // required IconData icon,
  required VoidCallback onClick,
  required BuildContext context,

}) {
  return InkWell(
    onTap: onClick,
    child: Container(

      alignment: Alignment.center,
      height: 50.h,
      width: 300.w,

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
            style:Theme.of(context).textTheme.bodyMedium
          ),
        ),
      ),
    ),
  );
}