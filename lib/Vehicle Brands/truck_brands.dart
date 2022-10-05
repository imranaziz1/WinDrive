
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class truck_brands extends StatelessWidget {

  final List truckBrandList = [
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
  truck_brands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.pink,
            title: const Text('Choose your Truck Brand',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
              ),),
            leading: TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back'))
        ),

        body: ListView.builder(
          itemCount: truckBrandList.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                  color: Colors.white,
                  child:  ListTile(
                    title: Text(truckBrandList[index]),
                    trailing: IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next)),
                    leading:  CircleAvatar(
                      foregroundImage: AssetImage('assets/delivery_courier.png'),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                  )
              ),
            );

          },
        ));
  }
}
