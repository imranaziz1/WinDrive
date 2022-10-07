import 'package:flutter/material.dart';
import './settings/dateDistances.dart';
import './settings/navigator.dart';

import './settings/language.dart';
import './settings/nightMode.dart';
import './settings/rulesTerms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        // primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Settings'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

ListTile _listTile1(Function() ontap, String title, String subtitle) {
  return ListTile(
    onTap: ontap,
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: const Icon(Icons.arrow_forward_ios_outlined),
  );
}

ListTile _listTile2(Function() ontap, String title) {
  return ListTile(
    onTap: ontap,
    title: Text(title),
    trailing: const Icon(Icons.arrow_forward_ios_outlined),
  );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(child: const Drawer()),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          _listTile1(
            () => showDialog(
              context: context,
              barrierDismissible: true, // user may or may not tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Text('Do you want to use a new number?'),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('No'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      onPressed: () {}, // Change Number
                      child: Text('Yes'),
                    ),
                  ],
                );
              },
            ),
            "Phone Number",
            "+92..........",
          ),
          // _listTile1(() {}, "Phone Number", "+92.........."),
          _listTile1(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Language()));
          }, "Language", "Default language"),
          _listTile2(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DateDistances()));
          }, "Date and distances"),
          _listTile1(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const NightMode()));
          }, "Night mode", "System"),
          _listTile2(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Navigtor()));
          }, "Navigator"),
          _listTile2(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const RulesTerms()));
          } // Route to language page
              , "Rules and terms"),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                barrierDismissible: true, // user may or may not tap button!
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Text('Do you want to log out?'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Log out'), //Log out functionality
                      ),
                    ],
                  );
                },
              );
            }, //Log out
            child: Row(
              children: const [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                  child: Text(
                    'Log out',
                    style: TextStyle(color: Colors.blue, fontSize: 15.0),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
