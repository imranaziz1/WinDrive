import 'package:flutter/material.dart';

class RulesTerms extends StatelessWidget {
  const RulesTerms({Key? key}) : super(key: key);

  ListTile _listTile(Function() ontap, String title) {
    return ListTile(
      onTap: ontap,
      title: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Rules and terms'),
      ),
      body: Column(
        children: [
          _listTile(
            () {}, // Service Rules Page
            'Service Rules',
          ),
          _listTile(
            () {}, // Terms and conditions Page
            'Terms and conditions',
          ),
          _listTile(
            () {}, // Service Rules Page
            'Privacy policy',
          ),
          _listTile(
            () {}, // Licenses Page
            'Licenses',
          ),
          ListTile(
            onTap: () {},
            title: Text('App version'),
            subtitle: Text('1.0.0 (Beta)'),
          ),
        ],
      ),
    );
  }
}
