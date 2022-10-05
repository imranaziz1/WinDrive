import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:win_drive/basic_info/basic_info.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Registration',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: TextButton(onPressed: (){
          Navigator.pop(context);},
            child: Text('Back')),
        actions: <Widget> [
          TextButton(onPressed: (){} , child: const Text('Close',
            textAlign: TextAlign.center,
          ))
        ],
      ),
      body: buildStack(context),
    );
  }
  Widget buildStack(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            color: Colors.black12,

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: ListTile.divideTiles(context: context, tiles: [
                    ListTile(
                      trailing: IconButton(icon: Icon(Icons.navigate_next,
                        color: Colors.green,),
                        onPressed:() => Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => BasicInfo())),),
                      title: Text('Basic info'),
                    ),
                    ListTile(
                      trailing: IconButton(icon: Icon(Icons.navigate_next), onPressed:() => Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => BasicInfo())),),
                      title: Text('Driver license'),
                    ),
                    ListTile(
                      trailing: IconButton(
                        icon: Icon(Icons.navigate_next),
                        onPressed:() => Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => BasicInfo())),),
                      title: Text('ID confirmation'),
                    ),
                    ListTile(

                      trailing: IconButton(
                        icon: Icon(Icons.navigate_next),
                        onPressed:() => Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => BasicInfo())),),
                      title: Text('CNIC'),
                    ),
                    ListTile(
                      trailing: IconButton(
                        icon: Icon(Icons.navigate_next), onPressed:() => Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => BasicInfo())),),
                      title: Text('Vehicle info'),
                    ),
                    ListTile(
                      trailing: IconButton(
                        icon: Icon(Icons.navigate_next), onPressed:() => Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => BasicInfo())),),
                      title: Text('Agent Referral Code'),
                      subtitle: Text('Optional, enter if you have code'),
                    ),
                  ]).toList(),
                ),
              ),
            ),
          ),
        ),
        //
        // Positioned(
        //       child: Container(
        //         color: Colors.red,
        //       ),
        //     ),
        //
        //   Positioned(
        //     child: Center(
        //       child: Container(
        //         color: Colors.blue,
        //       ),
        //     ),
        //   ),
      ],
    );
  }
}