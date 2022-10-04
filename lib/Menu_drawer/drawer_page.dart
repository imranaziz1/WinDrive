

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../basic_info/basic_info.dart';

class drawer_page extends StatefulWidget {
  const drawer_page({Key? key}) : super(key: key);

  @override
  State<drawer_page> createState() => _drawer_pageState();
}

class _drawer_pageState extends State<drawer_page> {
  @override
  Widget build(BuildContext context) {
    return ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                selectedTileColor: Colors.pink.shade300,
                title: Text("User Name"),
                trailing: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => basic_info()));
                }, icon: Icon(Icons.navigate_next)),
                leading: CircleAvatar(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/user.png',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(13.9),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 5,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(Icons.location_city),
                title: Text('City'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.access_time),
                title: Text('Request history'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.reduce_capacity_outlined),
                title: Text('Intercity'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.fire_truck_sharp),
                title: Text('Truck New'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.health_and_safety),
                title: Text('Safety'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.error_outline_outlined),
                title: Text('FAQ'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.message_rounded),
                title: Text('Support'),
                onTap: (){},
              ),
              Divider(
                height: 2,
                thickness: 2,
              ),
              ElevatedButton(onPressed: (){}, child: Text("Driver mode"),

              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Icon(Icons.whatsapp),
                      onTap: (){},
                    ),
                    InkWell(
                      child: Icon(Icons.whatsapp),
                      onTap: (){},

                    )
                  ],
                ),
              )
            ],
          );
  }
}
