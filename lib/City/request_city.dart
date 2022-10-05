

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RequestCity extends StatelessWidget {
  const RequestCity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Choose your City"),
      ),
    );
  }
}
