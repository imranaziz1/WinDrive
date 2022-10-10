import 'package:flutter/material.dart';
import 'package:win_drive/CustomButtons/custom_button.dart';
import 'package:win_drive/FAQ/faq.dart';
import 'package:win_drive/Registration/registration.dart';
import 'package:win_drive/Request%20history/request_history.dart';
import 'package:win_drive/Safety/saftey.dart';
import 'package:win_drive/Support/support.dart';

import '../BasicInfo/basic_info.dart';
import '../MainPage/home_page.dart';
import '../Setting/setting_screen.dart';

class DrawerPage extends StatefulWidget {

  String? SelectedTab;
   DrawerPage({Key? key,
     this.SelectedTab,
  }) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(

      width: screenSize.width*0.85,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BasicInfo()));
              },
              child: ListTile(
                selectedTileColor: Colors.pink.shade300,
                title: Text("User Name"),
                trailing:  Icon(Icons.navigate_next),
                leading: CircleAvatar(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/imran/user.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(13.9),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              height: 5,
              thickness: 2,
            ),
            ListTile(
              selectedTileColor: Colors.black12,
              selected: widget.SelectedTab=='city'?true:false,
              leading: Icon(Icons.location_city),
              title: Text('City'),
              onTap: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => HomePage()));

                setState((){
                  widget.SelectedTab = 'city';
                });

              },
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Request history'),
              selectedTileColor: Colors.black12,
              selected: widget.SelectedTab=='history'?true:false,

              onTap: () {
                setState((){
                  widget.SelectedTab = 'history';

                });


                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RequestHistory()));
              },
            ),
            ListTile(
              leading: Icon(Icons.reduce_capacity_outlined),
              title: Text('Intercity'),
              selectedTileColor: Colors.black12,
              selected: widget.SelectedTab=='intercity'?true:false,

              onTap: () {
                setState((){
                  widget.SelectedTab = 'intercity';
                });


                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety),
              title: Text('Safety'),
              selectedTileColor: Colors.black12,
              selected: widget.SelectedTab=='safety'?true:false,

              onTap: () {
                setState((){
                  widget.SelectedTab = 'safety';
                });


                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Safety()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              selectedTileColor: Colors.black12,
              selected: widget.SelectedTab=='setting'?true:false,

              onTap: () {
                setState((){
                  widget.SelectedTab = 'setting';
                });


                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.error_outline_outlined),
              title: Text('FAQ'),
              selected: widget.SelectedTab=='faq'?true:false,
              selectedTileColor: Colors.black12,

              onTap: () {
                setState((){
                  widget.SelectedTab = 'faq';
                });


                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FaqScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.message_rounded),
              title: Text('Support'),
              selected: widget.SelectedTab=='support'?true:false,
              selectedTileColor: Colors.black12,

              onTap: () {
                setState((){
                  widget.SelectedTab = 'support';
                });


                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Support()));
              },
            ),
            Divider(
              height: 2,
              thickness: 2,
            ),
            SizedBox(height: 10,),
            CustomButton(
                title: "Driver mode",
                onClick: () =>
                    MaterialPageRoute(builder: (context) => Registration())),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Image.asset("assets/imran/instagram.png"),
                    onTap: () {},
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    child : Image.asset("assets/imran/whatsapp.png"),
                    onTap: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
