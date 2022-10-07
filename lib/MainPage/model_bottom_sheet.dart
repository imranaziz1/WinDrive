
import 'package:flutter/material.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
          height: screenSize.height * 0.8,
          color: Colors.green,
          child: new Center(
            child: new Text(" Modal BottomSheet",
                textScaleFactor: 2,
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        )
    );
  }
}
