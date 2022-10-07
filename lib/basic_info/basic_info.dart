



import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import '../CustomButtons/custom_button.dart';
import '../main_page/home_page.dart';
import 'package:path/path.dart';


class BasicInfo extends StatefulWidget {
  const BasicInfo({Key? key}) : super(key: key);

  @override
  State<BasicInfo> createState() => _BasicInfoState();
}

class _BasicInfoState extends State<BasicInfo> {
  File? _image;

  Future getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imagePermanent = await File(image.path);
      setState(() {
        _image = imagePermanent;
      });
    } on PlatformException catch (e) {
      print("Failed to pick Image: $e");
    }
    //For save file permanently call this code, at [FILE]  facing issue
    Future<File> saveFilePermanently(String imagePath) async {
      final directory = await getApplicationDocumentsDirectory();
      final name = basename(imagePath);
      final image = File("${directory.path}/$name");

      return File(imagePath).copy(image.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => HomePage())));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Scaffold(
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                _image != null
                    ? Image.file(
                        _image!,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      )
                    : Image.asset("assets/imran/user_2.png"),
                SizedBox(height: 16,),

                OutlinedButton(onPressed: () => getImage(ImageSource.gallery),
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),),
                  child: Text('Add a photo'),
                ),


                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        initialValue: 'First Name',
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline,
                          ),
                        ),
                      ),
                      TextFormField(
                        initialValue: 'Last Name',
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline,
                          ),
                        ),
                      ),

                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.calendar_today_rounded,
                          ),
                        ),
                      ),
                      TextFormField(
                        initialValue: 'E-mail',
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                          ),
                        ),
                      ),
                      TextFormField(
                        initialValue: 'Country',
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.home_work_outlined,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10,),
                          CustomButton(title: "Save", onClick: (){}),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    //  bottomNavigationBar: BottomNavigationBar(

    );
  }
}
