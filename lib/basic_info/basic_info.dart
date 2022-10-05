



import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../CustomButtons/custom_button.dart';
import '../Menu_drawer/drawer_page.dart';

class basic_info extends StatefulWidget {
  const basic_info({Key? key}) : super(key: key);

  @override
  State<basic_info> createState() => _basic_infoState();

}

class _basic_infoState extends State<basic_info> {
  File? _image;

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if( image == null) return;

    final imageTemporary = File(image.path);
    setState(() {
      this._image = imageTemporary;
    });

   // final ImagePermanent = await saveFilePermanently(image.path);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 1,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => drawerPage())));
        }, icon: Icon(Icons.menu),),
        actions: <Widget> [
          TextButton(onPressed: (){

          } , child: Text('Close',
            textAlign: TextAlign.center,
          ))
        ],

      ),
      body: SafeArea(
        child: Column(
            children: <Widget> [
              SizedBox(height: 10,),
                 Image(image: AssetImage("assets/imran/user_2.png"),
                 ),

                    SizedBox(height: 16,),
                    OutlinedButton(onPressed: getImage,
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),),
                      child: Text('Add a photo'),
                    ),


              Column(
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
                    initialValue: 'Date of birth',
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
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 10,),
                        custom_button(title: "Next", onClick: (){}),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
      ),
    );
  }
}
