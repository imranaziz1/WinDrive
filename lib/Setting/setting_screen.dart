import 'package:flutter/material.dart';
import 'package:win_drive/Setting/rulesTerms/mainRulesTerms.dart';

import '../MainPage/home_page.dart';
import '../MenuDrawer/drawer_page.dart';
import 'dateDistances.dart';
import 'language.dart';
import 'navigator.dart';
import 'nightMode.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
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

ListTile _listTile2(context, Function() ontap, String title) {
  return ListTile(
    onTap: () => Navigator.push(
        context, MaterialPageRoute(builder: (context) => ontap())),
    title: Text(title),
    trailing: const Icon(Icons.arrow_forward_ios_outlined),
  );
}

class _SettingScreenState extends State<SettingScreen> {
  String SelectedTab = 'setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Setting'),
        leading: GestureDetector(
            // onTap: () => Navigator.of(context).pop(),
            // onTap: () => Navigator.pop(context),
            onTap: () => Navigator.pop(context),
            // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingScreen())),
            child: const Icon(Icons.arrow_back)),
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
          _listTile2(context, () => DateDistances(pageName: _pageName[2]),
              _pageName[2]),
          _listTile1(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NightMode(pageName: _pageName[3])));
          }, _pageName[3], "System"),
          _listTile2(
              context, () => Navigtor(pageName: _pageName[4]), _pageName[4]),
          _listTile2(
              context, () => RulesTerms(pageName: _pageName[5]), _pageName[5]),
          InkWell(
            onTap: () {
              showDialog(

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
      ),
    );
  }
}
