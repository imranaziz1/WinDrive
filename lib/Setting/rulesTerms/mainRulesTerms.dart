import 'package:flutter/material.dart';
import 'package:win_drive/Setting/setting_screen.dart';

import '/setting/rulesTerms/licenses.dart';
import '/setting/rulesTerms/privacyPolicy.dart';
import '/setting/rulesTerms/serviceRules/serviceRules.dart';
import '/setting/rulesTerms/termsConditions.dart';

class RulesTerms extends StatelessWidget {
  final String pageName;

  RulesTerms({Key? key, required this.pageName}) : super(key: key);

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
            // onTap: () => Navigator.of(context).pop(),
          // onTap: () => Navigator.pop(context),
          onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => SettingScreen())),
          // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingScreen())),
            child: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(pageName),
      ),
      body: Column(
        children: [
          _listTile(
            () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ServiceRules()));
            }, // Service Rules Page
            'Service Rules',
          ),
          _listTile(
            () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TermsConditions()));
            }, // Terms and conditions Page
            'Terms and conditions',
          ),
          _listTile(
            () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PrivacyPolicy()));
            }, // Service Rules Page
            'Privacy policy',
          ),
          _listTile(
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Licenses()));
            }, // Licenses Page
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
