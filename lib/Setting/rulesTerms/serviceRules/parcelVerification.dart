import 'package:flutter/material.dart';
import 'package:win_drive/Setting/rulesTerms/mainRulesTerms.dart';

import '/Setting/rulesTerms/serviceRules/serviceRulesWidget.dart';

class ParcelVerification extends StatelessWidget {
  ParcelVerification({Key? key, required this.pageName}) : super(key: key);

  final String pageName;

  @override
  Widget build(BuildContext context) {
    // return serviceRulesScaffold(context, pageName);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () =>
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RulesTerms(pageName: "Rules and Terms"))),
            child: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(pageName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: serviceRulesColumn(
          context,
          'Parcel Verification',
          "The courier may ask you to show them the contents of the parcel. They have the right not to accept a parcel if the contents appear suspicious. If the courier suspects that the parcel contents are illegal or violate the rules of our service, they will let us know.",
        ),
      ),
    );
  }
}