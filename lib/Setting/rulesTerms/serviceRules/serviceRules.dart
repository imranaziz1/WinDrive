import 'package:flutter/material.dart';

class ServiceRules extends StatelessWidget {
  ServiceRules({Key? key}) : super(key: key);

  final List<String> _tileName = [
    'Rules for passengers',
    'Parcel verification by the courier',
    'Couriers do not accept',
    'Freight',
    'Blocking an account',
  ];

  InkWell _tile(String title, context) {
    return InkWell(
      onTap: (){
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => Language(pageName: _pageName[1])));
      },
      child: Container(
        margin: EdgeInsets.only(top: 2),
        color: Colors.white,
        child: ListTile(
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black,),
        ),
      ),
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
        title: const Text('Service Rules'),
      ),
      body: Container(
        color: Colors.grey[100],
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Rules', style: TextStyle(fontSize: 20)),
            ),
            Container(
              child: Column(
                children: [
                  // _tile(_tileName[0]),
                  // _tile(_tileName[1]),
                  // _tile(_tileName[2]),
                  // _tile(_tileName[3]),
                  // _tile(_tileName[4]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
