import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:win_drive/CityLocationPicker/city_location_picker.dart';
class SendVerificationCode extends StatefulWidget {
  const SendVerificationCode({Key? key}) : super(key: key);

  @override
  State<SendVerificationCode> createState() => _SendVerificationCodeState();
}

class _SendVerificationCodeState extends State<SendVerificationCode> {
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
  Widget build(BuildContext context) {
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
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
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
                        hintText: "We sent you a login code",
                        textFieldController: controller,
                        spaceBetweenSelectorAndTextField: 0.0,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: TextFormField(

                        decoration: InputDecoration(



                          hintText: "Enter the login code",
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CityLocationPicker()));
                          },
                          child: Text(
                            'Resend text message',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.teal,
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
                child:  Container(
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
                        TextSpan(
                          text: 'Terms & Conditions',
                          style: GoogleFonts.dmSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.teal,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        TextSpan(
                          text: ' and ',
                          style: GoogleFonts.dmSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffA9A9AA),
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
                          recognizer: TapGestureRecognizer()..onTap = () {},
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
