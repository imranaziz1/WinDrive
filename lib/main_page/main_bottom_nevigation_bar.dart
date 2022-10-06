


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:win_drive/main_page/vehicle_container.dart';

class MainBottomNevigationBar extends StatefulWidget {
  const MainBottomNevigationBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNevigationBar> createState() => _MainBottomNevigationBarState();
}

class _MainBottomNevigationBarState extends State<MainBottomNevigationBar> {

  @override
  Widget build(BuildContext context) {
  //  var screenSize = MediaQuery.of(context).size;
    return Container(
      //height: screenSize.height*0.5,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              SingleChildScrollView(
                child: ListView(
                  children: [
                  CustomContainer(
                      title: "Ride Ac",
                      vehicleImage: "assets/imran/instagram.png",
                      onClick: () {}),
                  SizedBox(
                    width: 10,
                  ),
                  //   CustomContainer(
                  //     title: "Ride Ac",
                  //     vehicleImage: "assets/imran/instagram.png",
                  //     onClick: () {}),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  // CustomContainer(
                  //     title: "Ride Ac",
                  //     vehicleImage: "assets/imran/instagram.png",
                  //     onClick: () {}),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  // CustomContainer(
                  //     title: "Ride Ac",
                  //     vehicleImage: "assets/imran/instagram.png",
                  //     onClick: () {}),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  // CustomContainer(
                  //     title: "Ride Ac",
                  //     vehicleImage: "assets/imran/instagram.png",
                  //     onClick: () {}),
                  // SizedBox(
                  //   width: 10,
                  // ),
                ],
              )
              ),
            ],
          )
        ],
      ),
    );
  }
}
