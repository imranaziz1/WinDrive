

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:win_drive/basic_info/basic_info.dart';

class car_brands extends StatelessWidget {

  final List brandList = [
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
  car_brands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink,
          title: Text("Choose Car",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          leading: TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Back'))
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: brandList.length,
            itemBuilder:(BuildContext context,int index) {
              return Card(
                color: Colors.white,
                child:  ListTile(
                  title: Text(brandList[index]),
                  trailing: IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => basic_info())
                    );
                  }, icon: Icon(Icons.navigate_next)),
                  leading:  CircleAvatar(
                    foregroundImage: AssetImage('assets/sport_car.png',
                    ),
                    backgroundColor: Colors.white,
                  ),
                  // ImageIcon(AssetImage('assets/sport_car.png',))
                ),
              );
            }),
      ),
    );
  }
}
