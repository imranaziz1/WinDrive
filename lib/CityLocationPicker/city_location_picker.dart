import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  style: Theme.of(context).textTheme.bodyLarge
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    height: 100.h,
                    child: Image.asset("assets/images/location.png")),
                SizedBox(height: 5.h,),

                Text(
                  'Select your city',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    color: Color(0xff06161C),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 5.h,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddLocationDialog()));

                  },
                  child: Text(
                    'Edit',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      color:  Theme.of(context).primaryColor,
                      fontSize: 15.sp,
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
                  width:  MediaQuery.of(context).size.width*0.9,

                  height: 55.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));


                    },
                    child: Text(
                      'Next',
                      style: Theme.of(context).textTheme.bodyMedium
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
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
