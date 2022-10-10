import 'package:flutter/material.dart';
import 'package:win_drive/Setting/rulesTerms/mainRulesTerms.dart';

import '/Setting/rulesTerms/serviceRules/serviceRulesWidget.dart';

class CouriersDoNot extends StatelessWidget {
  CouriersDoNot({Key? key, required this.pageName}) : super(key: key);

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
          'Couriers do not accept:',
          "-alcohol\n- precious metals, precious stones, jewelry\n- weapons, armaments, ammunition\n- military equipment or any parts or accessories for it\n- explosives\n- gunpowder, uranium, poison\n- narcotic or psychotropic substances\n- medicines\n- items and goods that are restricted for sale or have been removed from circulation\n\nBoth customers and couriers are forbidden to post messages of any kind in place of courier requests.",
        ),
      ),
    );
  }}