import 'package:flutter/material.dart';

import '../MainPage/home_page.dart';
import '../MenuDrawer/drawer_page.dart';

class Safety extends StatefulWidget {
  const Safety({Key? key}) : super(key: key);

  @override
  State<Safety> createState() => _SafetyState();
}

class _SafetyState extends State<Safety> {
  String SelectedTab = 'safety';

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: ()async {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        return false;
      },
      child: Scaffold(
        drawer: SafeArea(child: new DrawerPage(
            SelectedTab:SelectedTab
        ),),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 2,
          title: Text(
            "Safety",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),

            Container(
              height: 200,
              width: 200,
              decoration:
                  BoxDecoration(color: Colors.blueGrey.withOpacity(0.09), shape: BoxShape.circle),
              child: Center(child: Image.asset("assets/images/shield.png")),
            ),
            SizedBox(height: 20,),

            Text(
              "Who do you want to\n contact?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
            ),
            SizedBox(height: 40,),

            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.95,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Center(
                  child: Text("Ambulance",style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.95,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Center(
                  child: Text("Police",style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
