import 'package:flutter/material.dart';
import 'package:win_drive/City/request_city.dart';
import 'package:win_drive/CustomButtons/custom_button.dart';
import 'package:win_drive/FAQ/faq.dart';
import 'package:win_drive/Registration/registration.dart';
import 'package:win_drive/Request%20history/request_history.dart';
import 'package:win_drive/Safety/saftey.dart';
import 'package:win_drive/Support/support.dart';
import 'package:url_launcher/link.dart';
import '../BasicInfo/basic_info.dart';
import '../MainPage/home_page.dart';
import '../Setting/setting_screen.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(

      width: screenSize.width*0.85,
     // height: screenSize.height*0.85,
      child: Drawer(
        child: Column(

          children: [
            Container(
              height: screenSize.height*0.76,

              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 11.0),
                    child: InkWell(
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
                  ),
                  Divider(
                    height: 20,
                    thickness: 2,
                  ),
                  ListTile(
                    leading: Icon(Icons.location_city),
                    title: Text('City'),
                    selectedTileColor: Colors.black12,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text('Request history'),
                    selectedTileColor: Colors.black12,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RequestHistory()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.blur_circular_outlined),
                    title: Text('Intercity'),
                    selectedTileColor: Colors.black12,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.fire_truck_sharp),
                  //   title: Text('Truck New'),
                  //   selectedTileColor: Colors.black12,
                  //   onTap: () {
                  //     Navigator.push(context,
                  //         MaterialPageRoute(builder: (context) => TruckNew()));
                  //   },
                  // ),
                  ListTile(
                    leading: Icon(Icons.health_and_safety),
                    title: Text('Safety'),
                    selectedTileColor: Colors.black12,
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Safety()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Setting'),
                    selected: true,
                    selectedTileColor: Colors.black12,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SettingScreen()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.error_outline_outlined),
                    title: Text('FAQ'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FaqScreen()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.message_rounded),
                    title: Text('Support'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Support()));
                    },
                  ),
                  Divider(
                    height: 2,
                    thickness: 2,
                  ),


                ],
              ),
            ),
           // SizedBox(height: 10,),
            CustomButton(

                title: "Driver mode",
                onClick: () =>
                    MaterialPageRoute(builder: (context) => Registration())),
            SizedBox(height: 20,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(width: 10),
                Link(
                  uri: Uri.parse('https://www.instagram.com/rizwan_hussain__/'),
                  builder: (context,followlink) => InkWell(onTap: followlink,
                      child: Image.asset("assets/imran/instagram.png")),

                ),

                SizedBox(width: 20),
                Link(
                  uri: Uri.parse('https://www.facebook.com/profile.php?id=100082880227440'),
                  builder: (context,followlink) => InkWell(onTap: followlink,
                      child: Image.asset("assets/imran/facebook_icon.png")),

                )

              ],
            ),
          ],
        ),

      ),
    );
  }
}