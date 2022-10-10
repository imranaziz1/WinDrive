import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/colors.dart';
import '../MainPage/home_page.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.arrow_back_ios,color: Colors.grey,size: 20,),
                              Text("Back",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18
                                ),
                              )
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                ),
                Text(
                  'Welcome to winDriver!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    fontFamily: Constants.kFontFamily
                  ),
                  // style: GoogleFonts.dmSans(
                  //
                  //   color: Color(0xff06161C),
                  //   fontSize: 24,
                  //   fontWeight: FontWeight.w800,
                  // ),
                ),
                SizedBox(height: 20,),
                Text(
                  'Lets get acquainted',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    color: Color(0xff06161C),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),


              ],
            ),
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: Column(
               children: [
                 TextFormField(
                   decoration:InputDecoration(
                       hintText: "First name"
                   ) ,
                 ),
                 TextFormField(
                   decoration:InputDecoration(
                       hintText: "Last name"
                   ) ,
                 ),
               ],
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));


                    },
                    child: Text(
                      'Next',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
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
