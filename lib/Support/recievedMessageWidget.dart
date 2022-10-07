import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import '../Constants/constants.dart';

class RecievedMessageWidget extends StatefulWidget {
  @override
  _RecievedMessageWidgetState createState() => _RecievedMessageWidgetState();
}

class _RecievedMessageWidgetState extends State<RecievedMessageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      margin: EdgeInsets.only(right: 50, left: 20),
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10)),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(0),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Lorem ipsum is a placeholder text commonly. ",
                      maxLines: 7,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ))),
          ),
          Positioned.fill(
            bottom: -74,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                  "03:02 PM",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9E9E9E)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
