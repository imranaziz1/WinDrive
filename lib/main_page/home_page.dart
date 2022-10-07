import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:win_drive/Menu_drawer/drawer_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:ui';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'dart:typed_data';
import 'package:flutter_share/flutter_share.dart';

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

  late BitmapDescriptor icon;
  late BitmapDescriptor icon1;
  late BitmapDescriptor icon2;
  late BitmapDescriptor icon3;

  getIcons() async {
    var icon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 7.5),
        "assets/imran/user_location.png");
    var icon1=await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 7.5),
        "assets/imran/car.png");
    var icon2=await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 7.5),
        "assets/imran/truck2.png");
    var icon3=await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 7.5),
        "assets/imran/byke.png");
    setState(() {
      this.icon = icon;
      this.icon1 = icon1;
      this.icon2 = icon2;
      this.icon3 = icon3;
    });
  }
  GoogleMapController? mapController; //contrller for Google map
  PolylinePoints polylinePoints = PolylinePoints();

  String googleAPiKey = "AIzaSyC1XumqZaKF7uzEvYsfxwoEWU67QWh-JXU";
  final Set<Marker> _markers = {};
  Map<PolylineId, Polyline> polylines = {};
  LatLng startLocation = LatLng(33.8022151, 72.7501235);
  LatLng endLocation = LatLng(33.48966, 73.196911);
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
          //defaultMarkerWithHue(BitmapDescriptor.hueRed)
          icon: icon,
          markerId:  MarkerId(endLocation.toString()),

          position: LatLng(33.48966, 73.196911),
          infoWindow: InfoWindow(title: 'Monem', snippet: 'chishty')));
      _markers.add(Marker(
        //defaultMarkerWithHue(BitmapDescriptor.hueRed)
          icon: icon1,
          markerId:  MarkerId(startLocation.toString()),
          position: LatLng(33.8022151, 72.7501235), //position of marker
          infoWindow: InfoWindow( //popup info
            title: 'Starting Point ',
            snippet: 'Start Marker',
          )));
          //position: LatLng(33.8022151, 72.7501235),

      _markers.add(Marker(
        //defaultMarkerWithHue(BitmapDescriptor.hueRed)
          icon: icon2,
          markerId: const MarkerId('thirdMark'),
          position: LatLng(33.6596808, 72.084172),
          infoWindow: InfoWindow(title: 'saqib', snippet: 'rider')));
      _markers.add(Marker(
        //defaultMarkerWithHue(BitmapDescriptor.hueRed)
          icon: icon3,
          markerId: const MarkerId('fourthMark'),
          position: LatLng(33.9141273, 73.4046674),
          infoWindow: InfoWindow(title: 'ejaz', snippet: 'Pilot')));
    });
    print(_markers);
    getDirections(); //fetch direction polylines from Google API

    super.initState();
  }
  getDirections() async {
    List<LatLng> polylineCoordinates = [];

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleAPiKey,
      PointLatLng(startLocation.latitude, startLocation.longitude),
      PointLatLng(endLocation.latitude, endLocation.longitude),
      travelMode: TravelMode.driving,
    );

    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    } else {
      print(result.errorMessage);
    }
    addPolyLine(polylineCoordinates);
  }
  addPolyLine(List<LatLng> polylineCoordinates) {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.deepPurpleAccent,
      points: polylineCoordinates,
      width: 8,
    );
    polylines[id] = polyline;
    setState(() {});
  }

  bool isDrawer = true;

  @override
  void initState() {
    getIcons();
    super.initState();
    getCurrentLocation();
    Timer(Duration(seconds: 3), () {
      BottomSheetFunction();
    });
  }

  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: new DrawerPage(),
      body: SafeArea(
        child: InkWell(
          onTap: () {
            BottomSheetFunction();
          },
          child: Stack(
            children: [
              GoogleMap(
                zoomGesturesEnabled: true,
                polylines: Set<Polyline>.of(polylines.values),
                myLocationEnabled: true,
                onMapCreated: _onMapCreated,
              // onMapCreated: (_onMapCreated) { //method called when map is created
              //   setState(() {
              //     mapController = _onMapCreated;
              //   });
              // },
                initialCameraPosition: CameraPosition(
                  target: LatLng(30.3753, 69.3451),
                  zoom: 5,
                ),
                markers: _markers,
                mapType: MapType.normal,

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
                  InkWell(
                    onTap: () {
                      Share.share(
                          "https://www.youtube.com/watch?v=jMSxWfrszMA");
                    },
                    child: Padding(
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

  bool isShowBottomSheet = true;

  void BottomSheetFunction() {
    var screenSize = MediaQuery.of(context).size;
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            height: screenSize.height * 0.5,
            color: Colors.green,
            child: new Center(
              child: new Text(" Modal BottomSheet",
                  textScaleFactor: 2,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          );
        });
  }
}
