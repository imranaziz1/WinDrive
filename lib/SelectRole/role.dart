import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../GoogleMaps/google_maps.dart';
import '../main_page/home_page.dart';
class SelectRole extends StatelessWidget {
  const SelectRole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text("Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18
                  ),
                  )
                ],
              ),
            ),
            Text(
              'Are you a passanger or a driver?',
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                color: Color(0xff06161C),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'You can change the mode later',
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                color: Color(0xff06161C),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Center(
                child: Container(
                  width: 300,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));


                    },
                    child: Text(
                      'Passanger',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink.shade400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Center(
                child: Container(
                  width: 300,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {


                    },
                    child: Text(
                      'Driver',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink.shade400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
