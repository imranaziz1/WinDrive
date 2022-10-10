import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
     // height: screenSize.height*0.85,
      child: Drawer(
        child: Column(

          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BasicInfo()));
              },
              child: ListTile(
                selectedTileColor: Colors.pink.shade300,
                title: Text("User Name",style: Theme.of(context).textTheme.bodySmall,),
                trailing:  Icon(Icons.navigate_next,),
                leading: CircleAvatar(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/imran/user.png'),
                        fit: BoxFit.cover,

                      ),
                    ),
                  ),

            Divider(
              height: 1,
              thickness: 2,
            ),SizedBox(height: 20.h,),
            ListTile(
              selectedTileColor: Colors.black12,
              selected: widget.SelectedTab=='city'?true:false,
              leading: Icon(Icons.location_city),
              title: Text('City',style:Theme.of(context).textTheme.bodySmall,),
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
              title: Text('Request history',style:Theme.of(context).textTheme.bodySmall,),
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
              title: Text('Intercity',style: Theme.of(context).textTheme.bodySmall,),
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
              title: Text('Safety',style:Theme.of(context).textTheme.bodySmall,),
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
              title: Text('Setting',style:Theme.of(context).textTheme.bodySmall,),
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
              title: Text('FAQ',style:Theme.of(context).textTheme.bodySmall,),
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
              title: Text('Support',style:Theme.of(context).textTheme.bodySmall,),
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
                ],
              ),
            ),
            CustomButton(

                title: "Driver mode",
                context: context,
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