//
//
//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';
// class MapSample extends StatefulWidget {
//   const MapSample({Key? key}) : super(key: key);
//
//
//   @override
//   State<MapSample> createState() => MapSampleState();
// }
//
// class MapSampleState extends State<MapSample> {
//
//   double? myLat=34.0479;
//   double? myLon=100.6197;
//
//   void getCurrentLocation () async{
//     LocationPermission permission = await Geolocator.checkPermission();
//     if(permission==LocationPermission.denied||permission==LocationPermission.deniedForever){
//       print('permission nooo');
//       Geolocator.requestPermission();
//     }
//     else
//     {
//       print('current');
//       Position currentPosition = await Geolocator.getCurrentPosition(desiredAccuracy : LocationAccuracy.best);
//
//       myLon = currentPosition.longitude;
//       myLat = currentPosition.latitude;
//
//
//     }
//   }
//
//   final Set<Marker> _markers = {};
//
//   void _onMapCreated (GoogleMapController controller){
//     setState(() {
//       _markers.add(Marker(
//           markerId: const MarkerId('firstMark'),
//           position: LatLng(31.4337605 , 74.2964158),
//           infoWindow: InfoWindow(
//               title: 'Monem',
//               snippet: 'chishty'
//           )
//       ));
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     getCurrentLocation();
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             InkWell(
//               onTap: (){
//                 print('monem');
//               },
//               child: Container(
//                 height: 555,
//                 child: GoogleMap(
//
//                   myLocationEnabled: true,
//                   onMapCreated : _onMapCreated,
//                   initialCameraPosition:  CameraPosition(
//                     target: LatLng(myLat!, myLon!),
//                     zoom: 1,
//                   ),
//                   markers: _markers,
//
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                   onTap: (){
//                     getCurrentLocation();
//                     print(myLat);
//
//                     print('moenm');},
//                   child: const Text('monem')),
//             ),
//
//           ],
//         ),
//       ),
//
//     );
//   }
//
//
//
// }