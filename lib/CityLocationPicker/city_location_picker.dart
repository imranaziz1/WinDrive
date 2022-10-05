import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:win_drive/SelectRole/role.dart';
import 'package:win_drive/WelcomeScreen/welcome_screen.dart';
import 'package:win_drive/Widgets/add_location_dialog.dart';
class CityLocationPicker extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Column(

              children: [
                SizedBox(height: 10,),
                Text(
                  'Are you in this city?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    color: Color(0xff06161C),
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    height: 100,
                    child: Image.asset("assets/images/location.png")),
                SizedBox(height: 5,),

                Text(
                  'Select your city',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    color: Color(0xff06161C),
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 5,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddLocationDialog()));

                  },
                  child: Text(
                    'Edit',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      color:  Colors.teal,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Center(
                child: Container(
                  width: 300,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));


                    },
                    child: Text(
                      'Next',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
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
