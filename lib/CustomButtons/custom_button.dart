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
        borderRadius: BorderRadius.circular(100),
        color: Colors.teal,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            title,
            textAlign: TextAlign.center,
            style:Theme.of(context).textTheme.bodyMedium
          ),
        ],
      ),),
  );
}