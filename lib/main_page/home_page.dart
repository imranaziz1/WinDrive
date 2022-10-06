import 'dart:async';

import 'package:flutter/material.dart';
import 'package:win_drive/Menu_drawer/drawer_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

import 'model_bottom_sheet.dart';

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

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
          markerId: const MarkerId('firstMark'),
          position: LatLng(31.4337605, 74.2964158),
          infoWindow: InfoWindow(title: 'Monem', snippet: 'chishty')));
    });
  }

  bool isDrawer = true;
  bool isShowBottomSheet = true;
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
                // onCameraMoveStarted: (){
                //   setState((){
                //     isShowBottomSheet = false;
                //     print(isShowBottomSheet);
                //   });
                // },
                onLongPress: (value){
                    setState((){
                      isShowBottomSheet = false;
                      print(isShowBottomSheet);
                    });
                },
                myLocationEnabled: true,
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: LatLng(myLat!, myLon!),
                  zoom: 1,
                ),
                markers: _markers,
              ),
              Row(
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.share_outlined,
                          size: 25,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              isShowBottomSheet == true
                  ? Positioned(
                      height: screenSize.height * 0.6,
                      width: screenSize.width * 1,
                      bottom: 1,
                      child: Container(
                        color: Colors.white,
                      ))
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

//   void BottomSheetFunction() {
//     print(isShowBottomSheet);
//    showModalBottomSheet(
// useRootNavigator: false,
//         context: context,
//         builder: (builder) {
//           return ShowBottomSheet();
//         });
//     }
//     abc(){}
//
}
