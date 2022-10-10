import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                                    fontSize: 18.sp
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
                  style: Theme.of(context).textTheme.bodyLarge

                ),
                SizedBox(height: 20.h,),
                Text(
                  'Lets get acquainted',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall
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
                  width: MediaQuery.of(context).size.width*0.9,
                  height: 55.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));


                    },
                    child: Text(
                      'Next',
                      style:Theme.of(context).textTheme.bodyMedium
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
