import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:win_drive/Constants/colors.dart';


import 'Login/login_screen.dart';

void main() { runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 756),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {

    return MaterialApp(
theme: ThemeData(
  primaryColor: Constants.kPrimaryColor,
  fontFamily: Constants.kFontFamily,
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.dmSans(
      fontWeight: FontWeight.w800,
      fontSize: 25.sp,
      color: Colors.black,
    ),
    bodyMedium: GoogleFonts.dmSans(
      fontWeight: FontWeight.w300,
      fontSize: 20.sp,
      color: Colors.white,
    ),

    bodySmall:GoogleFonts.dmSans(
      fontWeight: FontWeight.w300,
      fontSize: 16.sp,
      color: Colors.black,
    ),


  ),),



      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );});
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => LoginScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.purple,

      body: Stack(
        children: [
          Container(
            height:screenSize.height*1,
            decoration:const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg.jfif'
                    ),
                    fit: BoxFit.fill
                )
            ),

          ),
          Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    Colors.teal.withOpacity(0.9),
                    Colors.lightBlue.withOpacity(0.9),
                  ],
                  begin:  Alignment.topRight,
                  end:  Alignment.bottomLeft,
                  // stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),

            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(


                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // showLogo==true?
                      Container(
                        height:screenSize.height*0.22,
                        decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/indrive_logo.jpeg'
                                ),
                                fit: BoxFit.contain
                            )
                        ),

                      ),
                      SizedBox(height: screenSize.height*0.025,),
                      const Center(
                        child: Text('winDriver',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 38),),
                      )

                    ],
                  ),
                ),

                Positioned(
                  bottom: screenSize.height*0.07,
                  child: const Text('We Value Your Efforts',style: TextStyle(color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500)),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

