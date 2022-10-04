

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:win_drive/Vehicle%20Brands/car_brands.dart';
import 'package:win_drive/Vehicle%20Brands/truck_brands.dart';

import '../Vehicle Brands/moto_brands.dart';

class selectTransport extends StatefulWidget {
  const selectTransport({Key? key}) : super(key: key);
  @override
  State<selectTransport> createState() => _selectTransportState();
}
class _selectTransportState extends State<selectTransport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.,
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        title: const Text('Going to work as:',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        leading: TextButton(onPressed: (){
          Navigator.pop(context);
        },        child: const Text('Back')),
        backgroundColor: Colors.pink,
        actions: <Widget> [
          TextButton(onPressed: (){} , child: const Text('Close',
            textAlign: TextAlign.center,
          ))
        ],
      ),

      body: Container(
        color: Colors.black12,
        child:   Center(
          child:   Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.shade200.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: ListView(
              children: ListTile.divideTiles(context: context, tiles: [

                ListTile(
                  trailing: IconButton(icon: const Icon(Icons.navigate_next), onPressed:() => Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => moto_brands())),),
                  visualDensity: const VisualDensity(vertical: 3),
                  dense: true,
                  title: const Text('Moter-bike'),
                  leading:  const CircleAvatar(
                    foregroundImage: AssetImage('assets/motorbike.png',
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
                ListTile(
                  trailing: IconButton(icon: const Icon(Icons.navigate_next), onPressed:() => Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => car_brands())),),
                  title: const Text('Car'),
                  leading:  const CircleAvatar(
                    foregroundImage: AssetImage('assets/sport_car.png',
                    ),
                    backgroundColor: Colors.white,
                    radius: 20,
                  ),
                ),
                ListTile(
                  trailing: IconButton(
                    icon: const Icon(Icons.navigate_next),
                    onPressed:() => Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => truck_brands())),),

                  title: const Text('Truck'),

                  leading:  const CircleAvatar(
                    foregroundImage: AssetImage('assets/delivery_courier.png'),
                    backgroundColor: Colors.white,
                    maxRadius: 20,
                  ),

                ),
                ListTile(

                  trailing: IconButton(icon: const Icon(Icons.navigate_next), onPressed:() => Navigator.push(

                      context, MaterialPageRoute(

                      builder: (context) => truck_brands())),),

                  title: const Text('high roof'),

                  leading:  const CircleAvatar(
                    foregroundImage: AssetImage('assets/box_truck.png'),
                    backgroundColor: Colors.white,
                  ),

                ),
                ListTile(

                  trailing: IconButton(icon: const Icon(Icons.navigate_next), onPressed:() => Navigator.push(

                      context, MaterialPageRoute(

                      builder: (context) => truck_brands())),),

                  title: const Text('We deliver'),

                  leading:  const CircleAvatar(
                    foregroundImage: AssetImage('assets/door_to_door.png'),
                    backgroundColor: Colors.white,
                  ),

                ),

              ]).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
