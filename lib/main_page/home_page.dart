
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:win_drive/Menu_drawer/drawer_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? myLat = 34.0479;
  double? myLon = 100.6197;

  void getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print('permission nooo');
      Geolocator.requestPermission();
    } else {
      print('current');
      Position currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);

      myLon = currentPosition.longitude;
      myLat = currentPosition.latitude;
    }
  }

  final Set<Marker> _markers = {};
  bool isShowBottomSheet = true;
  bool isShowTopIcons = true;

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),

          markerId: const MarkerId('firstMark'),
          position: LatLng(31.4337605, 74.2964158),
          infoWindow: InfoWindow(title: 'Monem', snippet: 'chishty')));
    });
  }

  bool isDrawer = true;
  bool isStillClicked = false;

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
    // Timer(Duration(seconds: 3), () {
    //   BottomSheetFunction();
    // });
  }

  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: SafeArea(child: new DrawerPage()),
      body: SafeArea(
        child: InkWell(
          onTap: () {
            // isShowBottomSheet=true;
            //  BottomSheetFunction();
          },
          child: Stack(
            children: [
              GoogleMap(

                onCameraIdle: () {
                  Timer(Duration(seconds: 1),(){
                  setState((){

                      isShowBottomSheet = true;
                      isShowTopIcons = true;
                    });

                  });
                },
                onCameraMoveStarted: (){
                  setState((){
                      isShowBottomSheet = false;
                      isShowTopIcons = false;

                    print(isShowBottomSheet);
                  });
                },

                myLocationEnabled: true,
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: LatLng(myLat!, myLon!),
                  zoom: 7,
                ),
                markers: _markers,
              ),
              isShowTopIcons==true?   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.menu,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                     Share.share("https://www.youtube.com/watch?v=jMSxWfrszMA");

                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.share_outlined,size: 25,
                          ),

                        ),
                      ),
                    ),
                  )
                ],

              ):SizedBox(),
              Positioned(
                    //  height: isShowBottomSheet == true?screenSize.height * 0.6:30,
                      width: screenSize.width * 1,
                      bottom: 0.01,
                      child: AnimatedContainer(
                        height: isShowBottomSheet == true?screenSize.height * 0.5:0,
                        //  transformAlignment: Alignment.topCenter,
                        //  curve: Curves.linear,
                        duration: Duration(milliseconds: 700),
                        decoration: BoxDecoration(
                            color: Colors.white,

                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                            )
                        ),

                        child: SingleChildScrollView(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,

                                borderRadius: BorderRadius.circular(33)
                            ),
                            child: Column(
                              children: [
                                Text('njfjej nkwekw',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 44),),
                                Text('njfjej nkwekw',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 44),),
                                Text('njfjej nkwekw',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 44),),
                                Text('njfjej nkwekw',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 44),),
                                Text('njfjej nkwekw',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 44),),
                                Text('njfjej nkwekw',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 44),),
                                Text('njfjej nkwekw',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 44),),
                                Text('njfjej nkwekw',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 44),),
                              ],
                            ),
                          ),
                        ),
                      ))

            ],
          ),
        ),
      ),
    );
  }
  void BottomSheetFunction(){
    var screenSize = MediaQuery.of(context).size;
    showModalBottomSheet(
        context: context,
        builder: (builder){
          return new Container(
            height: screenSize.height*0.5,
            color: Colors.green,
            child: new Column(
              children: [
              Container(
              //height: screenSize.height*0.5,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      SingleChildScrollView(
                              child: ListView(
                            children: [
                             InkWell(
                               onTap: (){},
                               child: Container(
                                 height: 10,
                                 width: 10,
                               ),
                             ),
                              SizedBox(
                                width: 10,
                              ),
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
            ),

              ],
            ),
          );
        }
    );
  }
abc(){

}

}
