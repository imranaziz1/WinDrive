import 'package:flutter/material.dart';
import 'package:win_drive/Setting/rulesTerms/mainRulesTerms.dart';

import '/Setting/rulesTerms/serviceRules/serviceRulesWidget.dart';

class Freight extends StatelessWidget {
  Freight({Key? key, required this.pageName}) : super(key: key);

  final String pageName;

  @override
  Widget build(BuildContext context) {
    // return serviceRulesScaffold(context, pageName);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.push(
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
        child: SingleChildScrollView(
          child: serviceRulesColumn(
            context,
            "How to request Freight",
            "1. How do I create a Freight request?\nFill in all the required fields, and describe your shipment as detailed as possible. Offer a fair price. You can also add a photo of your shipment.\nAfter clicking on the \"Order\" button, wait for offers from performers.\n2. Is it safe to ship via inDriver?\nAll drivers go through a mandatory document check before getting access to requests. Also, all orders are monitored and logged by the system.\n3. What are the restrictions?\nCargo restricted by the country's law is not allowed to be transported through inDriver.\n4. Freight rules of conduct.\nWe reserve the right to block your account in case of repeated order cancellations and fraudulent orders creation. It is also forbidden to include phone numbers and upload pictures of cargo that do not correspond to the shipped cargo.",
          ),
        ),
      ),
    );
  }
}