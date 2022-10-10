import 'package:flutter/material.dart';

import '/Setting/rulesTerms/serviceRules/blockingAccount.dart';
import '/Setting/rulesTerms/serviceRules/courierDoNot.dart';
import '/Setting/rulesTerms/serviceRules/freight.dart';
import '/Setting/rulesTerms/serviceRules/parcelVerification.dart';
import '/Setting/rulesTerms/serviceRules/rulesForPassengers.dart';

class ServiceRules extends StatelessWidget {
  ServiceRules({Key? key}) : super(key: key);

  final String pageName = 'Service Rules';

  final List<String> _tileName = [
    'Rules for passengers',
    'Parcel verification by the courier',
    'Couriers do not accept',
    'Freight',
    'Blocking an account',
  ];

  InkWell _tile(context, Function ontap, String title) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ontap()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 2),
        color: Colors.white,
        child: ListTile(
          title: Text(title),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(pageName),
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
                  _tile(context, () => RulesForPassengers(pageName: pageName),
                      _tileName[0]),
                  _tile(context, () => ParcelVerification(pageName: pageName),
                      _tileName[1]),
                  _tile(context, () => CouriersDoNot(pageName: pageName),
                      _tileName[2]),
                  _tile(
                      context, () => Freight(pageName: pageName), _tileName[3]),
                  _tile(context, () => BlockingAccount(pageName: pageName),
                      _tileName[4]),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
