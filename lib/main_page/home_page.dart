import 'dart:async';

import 'package:flutter/material.dart';
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

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
          markerId: const MarkerId('firstMark'),
          position: LatLng(31.4337605, 74.2964158),
          infoWindow: InfoWindow(title: 'Monem', snippet: 'chishty')));
    });
  }
  bool isDrawer= true;

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
    Timer(Duration(seconds: 3), () { BottomSheetFunction(); });

  }
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: isDrawer==true?DrawerPage():SizedBox(),
      // ),
      key: _scaffoldKey,
      drawer:  new DrawerPage(),
      body: SafeArea(
        child: InkWell(
          onTap: (){
            BottomSheetFunction();
          },
          child: Stack(
            children: [
              GoogleMap(
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
                      onTap: (){
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.menu,size: 25,),
                        ),

                      ),
                    ) ,
                  ),
                  InkWell(
                    onTap: (){

                      BottomSheetFunction();

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
                          child: Icon(Icons.share_outlined,size: 25,),
                        ),

                      ) ,
                    ),
                  )

                ],
              )





            ],
          ),
        ),
      ),
    );
  }
 bool isShowBottomSheet=true;
  void BottomSheetFunction(){
    var screenSize = MediaQuery.of(context).size;
    showModalBottomSheet(
        context: context,
        builder: (builder){
          return new Container(
            height: screenSize.height*0.5,
            color: Colors.green,
            child: new Center(
              child: new Text(" Modal BottomSheet",textScaleFactor: 2,
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
            ),
          );
        }
    );
  }

}
