import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:win_drive/Support/recievedMessageWidget.dart';
import 'package:win_drive/Support/sendMessageWidget.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        elevation: 2,
        title: Text("Support",style: TextStyle(color: Colors.black),),
      ),
      body:Stack(
        children: [
          Column(
            children: [
              // Padding(
              //   padding:
              //   const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       SizedBox(
              //         width: 10,
              //       ),
              //       CircleAvatar(
              //         radius: 20,
              //         backgroundImage: AssetImage("assets/profile.png"),
              //       ),
              //       SizedBox(
              //         width: 10,
              //       ),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             "Abdulmalik Qasim",
              //             style: GoogleFonts.dmSans(
              //               fontSize: 20,
              //               fontWeight: FontWeight.w700,
              //             ),
              //           ),
              //           Text(
              //             "Online",
              //             style: GoogleFonts.dmSans(
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.w400,
              //                 color: Colors.grey),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      sendMessageWidget(),
                      SizedBox(
                        height: 30,
                      ),
                      RecievedMessageWidget(),
                      SizedBox(
                        height: 30,
                      ),
                      RecievedMessageWidget(),
                      SizedBox(
                        height: 30,
                      ),
                      sendMessageWidget(),
                      SizedBox(
                        height: 30,
                      ),
                      RecievedMessageWidget(),
                      SizedBox(
                        height: 30,
                      ),
                      sendMessageWidget(),
                      SizedBox(
                        height: 30,
                      ),
                      RecievedMessageWidget(),
                      SizedBox(
                        height: 30,
                      ),
                      sendMessageWidget(),
                      SizedBox(
                        height: 30,
                      ),
                      RecievedMessageWidget(),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(

            width: MediaQuery.of(context).size.width,
            bottom: 0.1,
            child: Container(
            height: 66,
            color: Colors.teal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          // controller: searchC,
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.camera_alt,
                              color: Colors.grey,
                            ),
                            filled: true,
                            hintText: "Message",
                            fillColor: Colors.grey.shade100,
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            Icons.send,
                            color: Colors.teal,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),)
        ],
      ),

    );
  }
}
