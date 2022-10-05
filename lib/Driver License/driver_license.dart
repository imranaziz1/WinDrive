

import 'package:flutter/material.dart';

class driverLicense extends StatelessWidget {
  const driverLicense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Driver license"),
        backgroundColor: Colors.pink,

      ),
      body: Stack(
        children: [
          _driverLicenseCard(),
        ],
      ),
    );
  }
}
Container _driverLicenseCard(){
  return Container(
    margin: EdgeInsets.all(10.0),
    height: 200,
    alignment: Alignment.center,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),

    child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Licence number",textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20)),

        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder()
          ),),
        )

      ],
    ),
  );

}
