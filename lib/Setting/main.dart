import 'package:flutter/material.dart';

import 'setting/dateDistances.dart';
import 'setting/language.dart';
import 'setting/navigator.dart';
import 'setting/nightMode.dart';
import 'setting/rulesTerms/mainRulesTerms.dart';

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

final List<String> _pageName = [
  'Phone Number',
  'Language',
  'Date and Distances',
  'Night Mode',
  'Navigator',
  'Rules and terms'
];

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
      drawer: const SafeArea(child: Drawer()),
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
                  content: const Text('Do you want to use a new number?'),
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
            _pageName[0],
            "+92..........",
          ),
          _listTile1(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Language(pageName: _pageName[1])));
          }, _pageName[1], "Default language"),
          _listTile2(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DateDistances(pageName: _pageName[2])));
          }, _pageName[2]),
          _listTile1(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NightMode(pageName: _pageName[3])));
          }, _pageName[3], "System"),
          _listTile2(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Navigtor(pageName: _pageName[4])));
          }, _pageName[4]),
          _listTile2(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RulesTerms(pageName: _pageName[5])));
          }, _pageName[5]),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                barrierDismissible: true, // user may or may not tap button!
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: const Text('Do you want to log out?'),
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
