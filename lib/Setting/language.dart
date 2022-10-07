import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  final String pageName;
  const Language({Key? key, required this.pageName}) : super(key: key);

  ListTile _listTile(
      Function() ontap, String title, String subtitle, FontWeight fontWeight) {
    return ListTile(
      onTap: ontap,
      title: Text(title, style: TextStyle(fontWeight: fontWeight)),
      subtitle: Text(subtitle),
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
        title: Text(pageName),
      ),
      body: Column(
        children: [
          _listTile(() {}, "Default Language", "English", FontWeight.w600),
          _listTile(() {}, "Urdu", "Urdu", FontWeight.w400),
        ],
      ),
    );
  }
}
