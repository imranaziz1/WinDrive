

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class request_city extends StatelessWidget {
  const request_city({Key? key}) : super(key: key);

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
