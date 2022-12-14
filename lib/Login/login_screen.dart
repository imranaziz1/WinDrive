import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:win_drive/CityLocationPicker/city_location_picker.dart';
import 'package:win_drive/Login/send_verification_code.dart';
// import 'numericButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

   final TextEditingController controller = TextEditingController();
   String initialCountry = '+92';
   PhoneNumber number = PhoneNumber(isoCode: 'PK');



  @override
  void dispose() {
    controller.dispose();
    // myController.dispose();
    super.dispose();
  }
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
     double screenWidth = MediaQuery.of(context).size.width;
     print("................................................................");
     print(screenHeight);
     print(screenWidth);
     print("................................................................");




     return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(

            children: [
             Form(
               key: formKey,
               child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                 children: [



                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 28.0),
                     child: Text(
                       'Join us via phone number',
                       textAlign: TextAlign.center,
                      style:Theme.of(context).textTheme.bodyLarge
                     ),
                   ),
                   SizedBox(height: 20.h,),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 28.0),
                     child: InternationalPhoneNumberInput(

                       onInputChanged: (PhoneNumber number) {
                         print(number.phoneNumber);
                       },
                       onInputValidated: (bool value) {
                         print(value);
                       },
                       selectorConfig: SelectorConfig(

                           selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                           showFlags: true,

                           useEmoji: true),
                       ignoreBlank: false,
                       autoValidateMode: AutovalidateMode.disabled,
                       selectorTextStyle:GoogleFonts.dmSans(color: Colors.black),
                       initialValue: number,
                       hintText: "Enter your phone number",
                       textFieldController: controller,
                       spaceBetweenSelectorAndTextField: 0,
                        countrySelectorScrollControlled: true,
                       textAlign: TextAlign.start,
                       formatInput: false,
                       keyboardType: TextInputType.numberWithOptions(

                           signed: true, decimal: true),
                       onSaved: (PhoneNumber number) {
                         print('On Saved: $number');
                       },
                     ),
                   ),
                   SizedBox(height: 20.h,),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 10.0),
                     child: Center(
                       child: InkWell(
                         onTap: () {

                           showMaterialModalBottomSheet(

                               shape: OutlineInputBorder(
                                 borderRadius:
                                 BorderRadius.only(
                                   topLeft:
                                   Radius.circular(30),
                                   topRight:
                                   Radius.circular(30),
                                 ),
                                 borderSide:
                                 BorderSide.none,
                               ),
                               context: context,
                               builder: (context) =>Container(
                                 height: 350.h,
                                 child:Column(
                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     SizedBox(height: 10.h,),

                                     Text("Choose an authorization\n method", textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge,),
                                     SizedBox(height: 10.h,),
                                     InkWell(
                                       onTap: (){
                                         Navigator.pop(context);
                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>SendVerificationCode()));
                                       },
                                       child: Container(
                                         height: 50.h,
                                         width: MediaQuery.of(context).size.width*0.9,
                                         decoration: BoxDecoration(
                                             color: Colors.teal,
                                             borderRadius: BorderRadius.circular(20)
                                         ),
                                         child: Center(child: Text("Via WatsApp",style: Theme.of(context).textTheme.bodyMedium)),

                                       ),
                                     ),
                                     InkWell(
                                       onTap: (){
                                         Navigator.pop(context);
                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>SendVerificationCode()));
                                       },
                                       child: Container(
                                         height: 50.h,
                                         width: MediaQuery.of(context).size.width*0.9,
                                         decoration: BoxDecoration(
                                             color: Colors.grey.shade200,
                                             borderRadius: BorderRadius.circular(20)
                                         ),
                                         child: Center(child: Text("Via call",style: GoogleFonts.dmSans(
                                           fontWeight: FontWeight.w300,
                                           fontSize: 20.sp,
                                           color: Colors.black,
                                         ))),

                                       ),
                                     ),
                                     InkWell(

                                       onTap: (){
                                         Navigator.pop(context);
                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>SendVerificationCode()));
                                       },
                                       child: Container(
                                         height: 50.h,
                                         width: MediaQuery.of(context).size.width*0.9,
                                         decoration: BoxDecoration(
                                             color: Colors.grey.shade200,
                                             borderRadius: BorderRadius.circular(20)
                                         ),
                                         child: Center(child: Text("Via SMS",style: GoogleFonts.dmSans(
                                           fontWeight: FontWeight.w300,
                                           fontSize: 20.sp,
                                           color: Colors.black,
                                         ))),

                                       ),
                                     ),


                                   ],
                                 ),
                               )
                           );
                         },

                         // onTap: (){
                           // Navigator.push(context, MaterialPageRoute(builder: (context)=>SendVerificationCode()));
                         // },
                         child: Container(
                           width: 300.w,
                           height: 55.h,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(30),
                               color: Theme.of(context).primaryColor
                           ),
                           child: Center(
                             child: Text(
                               'Next',
                               style:Theme.of(context).textTheme.bodyMedium
                             ),
                           ),

                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
             Positioned(
               bottom: 10.h,
               left: 50,
               right: 50,
               child:  Center(
                 child: Container(
                 width: 344.w,
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(
                           height: 30.h,
                           child: Image.asset("assets/images/google (1).png") ,
                         ),
                         SizedBox(width: 10.w,),
                         Container(
                           height: 30.h,
                           child: Image.asset("assets/images/mac-os-logo.png") ,
                         )
                       ],
                     ),
                     SizedBox(height: 20.h,),
                     RichText(
                       textAlign: TextAlign.center,
                       text: TextSpan(
                         children: [
                           TextSpan(
                             text: 'By tapping "Next" you agree to ',
                             style: GoogleFonts.dmSans(
                               fontSize: 12.sp,
                               fontWeight: FontWeight.w500,
                               color: Color(0xffA9A9AA),
                             ),
                           ),

                         TextSpan(
                           text: 'Terms & Conditions',
                           style: GoogleFonts.dmSans(
                             fontSize: 12.sp,
                             fontWeight: FontWeight.w500,
                             color: Theme.of(context).primaryColor,
                             decoration: TextDecoration.underline,

                           ),),
                           TextSpan(
                             text: ' and ',
                             style: GoogleFonts.dmSans(
                               fontSize: 12.sp,
                               fontWeight: FontWeight.w500,
                               color: Color(0xffA9A9AA),
                             ),
                           ),

                         TextSpan(
                           text: 'Privacy Policy',
                           style: GoogleFonts.dmSans(
                             fontSize: 12.sp,
                             fontWeight: FontWeight.w500,
                             color: Theme.of(context).primaryColor,
                             decoration: TextDecoration.underline,

                           ),
                         )
                         ],
                       ),
                     ),
                   ],
                 ),
             ),
               ),)
            ],
          ),
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
    await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'PAK');

    setState(() {
      this.number = number;
    });
  }
}
