import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../MainPage/home_page.dart';

class SelectRole extends StatelessWidget {
  const SelectRole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height*0.95,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
               Column(
                 children: [
                   Text(
                     'Are you a passanger or a driver?',
                     textAlign: TextAlign.center,
                     style: GoogleFonts.dmSans(
                       color: Color(0xff06161C),
                       fontSize: 24,
                       fontWeight: FontWeight.w800,
                     ),
                   ),
                   SizedBox(height: 20,),
                   Text(
                     'You can change the mode later',
                     textAlign: TextAlign.center,
                     style: GoogleFonts.dmSans(
                       color: Color(0xff06161C),
                       fontSize: 18,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                 ],
               ),
                SizedBox(height: 10,),
                Image.asset("assets/images/undraw_By_my_car_re_j3jt (1).png"),
                SizedBox(height: 10,),

                Column(
                  children: [
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
                              'Passanger',
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


                    // Padding(
                    //   padding: const EdgeInsets.only(bottom: 10.0),
                    //   child: Center(
                    //     child: Container(
                    //       width: 300,
                    //       height: 55,
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(30),
                    //         color: Colors.grey.shade400
                    //       ),
                    //       child: Center(
                    //         child: Text(
                    //           'Driver',
                    //           style: GoogleFonts.dmSans(
                    //             fontWeight: FontWeight.w700,
                    //             fontSize: 18,
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
