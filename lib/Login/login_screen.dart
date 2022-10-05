import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
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
    // double screenHeight = MediaQuery.of(context).size.height - 20;
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
                      style: GoogleFonts.dmSans(
                         color: Color(0xff06161C),
                         fontSize: 20,
                         fontWeight: FontWeight.w800,
                       ),
                     ),
                   ),
                   SizedBox(height: 20,),

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
                   SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 10.0),
                     child: Center(
                       child: InkWell(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>SendVerificationCode()));
                         },
                         child: Container(
                           width: 300,
                           height: 55,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(30),
                               color: Colors.teal
                           ),
                           child: Center(
                             child: Text(
                               'Next',
                               style: GoogleFonts.dmSans(
                                 fontWeight: FontWeight.w700,
                                 fontSize: 18,
                                 color: Colors.white,
                               ),
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
               bottom: 10,
               left: 50,
               right: 50,
               child:  Center(
                 child: Container(
                 width: 344,
                 child: RichText(
                   textAlign: TextAlign.center,
                   text: TextSpan(
                     children: [
                       TextSpan(
                         text: 'By tapping "Next" you agree to ',
                         style: GoogleFonts.dmSans(
                           fontSize: 12,
                           fontWeight: FontWeight.w500,
                           color: Color(0xffA9A9AA),
                         ),
                       ),
                     ),
                     TextSpan(
                       text: 'Terms & Conditions',
                       style: GoogleFonts.dmSans(
                         fontSize: 12,
                         fontWeight: FontWeight.w500,
                         color: Colors.teal,
                         decoration: TextDecoration.underline,

                       ),
                       TextSpan(
                         text: ' and ',
                         style: GoogleFonts.dmSans(
                           fontSize: 12,
                           fontWeight: FontWeight.w500,
                           color: Color(0xffA9A9AA),
                         ),
                       ),
                     ),
                     TextSpan(
                       text: 'Privacy Policy',
                       style: GoogleFonts.dmSans(
                         fontSize: 12,
                         fontWeight: FontWeight.w500,
                         color: Colors.teal,
                         decoration: TextDecoration.underline,

                       ),

                     ],
                   ),
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
