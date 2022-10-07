import 'package:flutter/material.dart';

class DateDistances extends StatefulWidget {
  final String pageName;
  const DateDistances({Key? key, required this.pageName}) : super(key: key);

  @override
  State<DateDistances> createState() => _DateDistancesState();
}

class _DateDistancesState extends State<DateDistances> {
  bool isSwitched = false;

  // var textValue = 'Off';

  String distanceUnit = 'Kilometers';

  void _24HourSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        // textValue = 'On';
      });
      print('24-Hour Time Switch Button is On');
    } else {
      setState(() {
        isSwitched = false;
        // textValue = 'Off';
      });
      print('24-Hour Time Switch Button is Off');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(widget.pageName),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {},
            title: Text('24-Hour Time'),
            trailing: Switch(
              value: isSwitched,
              onChanged: _24HourSwitch,
              activeColor: Colors.grey[800],
              activeTrackColor: Colors.grey[300],
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey[500],
            ),
          ),
          ListTile(
            title: Text('Distances'),
            subtitle: Text(distanceUnit),
            onTap: () => showDialog(
              context: context,
              barrierDismissible: true, // user may or may not tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Distances'),
                  content: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RadioListTile(
                          title: Text('Kilometres'),
                          value: 'Kilometers',
                          groupValue: distanceUnit,
                          onChanged: (value) {
                            setState(() {
                              distanceUnit = value.toString();
                              Navigator.of(context).pop();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text('Miles'),
                          value: 'Miles',
                          groupValue: distanceUnit,
                          onChanged: (value) {
                            setState(() {
                              distanceUnit = value.toString();
                              Navigator.of(context).pop();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
