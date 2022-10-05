

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:win_drive/City/request_city.dart';
import 'package:win_drive/CustomButtons/custom_button.dart';
import 'package:win_drive/FAQ/faq.dart';
import 'package:win_drive/Intercity/intercity.dart';
import 'package:win_drive/Registration/registration.dart';
import 'package:win_drive/Request%20history/request_history.dart';
import 'package:win_drive/Safety/saftey.dart';
import 'package:win_drive/Setting/setting.dart';
import 'package:win_drive/Support/support.dart';
import 'package:win_drive/Truck%20NEW/truck_new.dart';

import '../basic_info/basic_info.dart';

class drawerPage extends StatefulWidget {
  const drawerPage({Key? key}) : super(key: key);

  @override
  State<drawerPage> createState() => _drawerPageState();
}

class _drawerPageState extends State<drawerPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(

            children: [
              SizedBox(height: 16,),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => basic_info()));
                },
                selectedTileColor: Colors.pink.shade300,
                title: Text("User Name"),
                trailing: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => basic_info()));
                }, icon: Icon(Icons.navigate_next)),
                leading: CircleAvatar(
                  child: Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/imran/user.png',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(13.9),
                    ),
                    child: SizedBox(height: 50,)
                  ),
                ),
                horizontalTitleGap: 50,
              ),
              Divider(
                height: 10,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(Icons.location_city),
                title: Text('City'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => request_city()));
                },
              ),
              ListTile(
                leading: Icon(Icons.access_time),
                title: Text('Request history'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => request_history()));
                },
              ),
              ListTile(
                leading: Icon(Icons.reduce_capacity_outlined),
                title: Text('Intercity'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => intercity()));
                },
              ),
              ListTile(
                leading: Icon(Icons.fire_truck_sharp),
                title: Text('Truck New'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => truck_new()));
                },
              ),
              ListTile(
                leading: Icon(Icons.health_and_safety),
                title: Text('Safety'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => safety()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => setting()));
                },

              ),
              ListTile(
                leading: Icon(Icons.error_outline_outlined),
                title: Text('FAQ'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => faq_screen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.message_rounded),
                title: Text('Support'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => support()));
                },
              ),
              Divider(
                height: 2,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: custom_button(title: "Driver Mode", onClick: (){}),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(

                      child: Image(image: AssetImage("assets/imran/whatsapp.png")),
                      onTap: (){},
                    ),
                    SizedBox(width: 50),
                    InkWell(
                      child: Image(image: AssetImage("assets/imran/Instagram.png")),
                      onTap: (){},

                    )
                  ],
                ),
              )
            ],
          );
  }
}
