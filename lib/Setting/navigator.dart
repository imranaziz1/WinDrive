import 'package:flutter/material.dart';

class Navigtor extends StatefulWidget {
  final String pageName;
  const Navigtor({Key? key, required this.pageName}) : super(key: key);

  @override
  State<Navigtor> createState() => _NavigtorState();
}

class _NavigtorState extends State<Navigtor> {
  bool isSwitched = false;
  // VoidCallback onpressed;
  void _navigatorSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        // textValue = 'On';
      });
      print('Navigator Switch Button is On');
    } else {
      setState(() {
        isSwitched = false;
        // textValue = 'Off';
      });
      print('Navigator Switch Button is Off');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pageName),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {},
            title: Text('24-Hour Time'),
            trailing: Switch(
              value: isSwitched,
              onChanged: _navigatorSwitch,
              activeColor: Colors.grey[800],
              activeTrackColor: Colors.grey[300],
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey[500],
            ),
          ),
          Divider(
            height: 1,
            thickness: 2,
          ),
          ListTile(
            onTap: () {},
            // leading: Icon(Icons.map),
            leading: Container(
                height: 30,
                child: Image.asset('assets/images/google_map_pic-removebg-preview.png')),
            title: Text(
              'Maps',
              style: TextStyle(fontSize: 18.0),
            ),
            trailing: Visibility(
              visible: isSwitched == true,
              child: Icon(
                Icons.check,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
