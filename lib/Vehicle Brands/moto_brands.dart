

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class moto_brands extends StatelessWidget {

  final List motoBrandList = [
    'BMW',
    'Toyota',
    'Testa',
    'Ford',
    'Fiat',
    'BMW',
    'Toyota',
    'Testa',
    'Ford',
    'Fiat'
  ];

  moto_brands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Choose your MoterBike Brand',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
            ),),
          leading: TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Back'))
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: motoBrandList.length,
            itemBuilder:(BuildContext context,int index) {
              return Card(
                color: Colors.white,
                child:  ListTile(
                  title: Text(motoBrandList[index]),
                  trailing: IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next)),
                  leading:  CircleAvatar(
                    foregroundImage: AssetImage('assets/motorbike.png',
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
