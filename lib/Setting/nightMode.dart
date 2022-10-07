import 'package:flutter/material.dart';

class NightMode extends StatelessWidget {
  const NightMode({Key? key}) : super(key: key);

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
                () {},
            'System',
          ),
          _listTile(
                () {},
            'Always enabled',
          ),
          _listTile(
                () {},
            'Off',
          ),
        ],
      ),
    );
  }
}
