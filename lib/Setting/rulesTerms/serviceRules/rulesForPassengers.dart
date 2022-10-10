import 'package:flutter/material.dart';
import 'package:win_drive/Setting/rulesTerms/mainRulesTerms.dart';

import '/Setting/rulesTerms/serviceRules/serviceRulesWidget.dart';
import '../../../Support/support.dart';

class RulesForPassengers extends StatelessWidget {
  RulesForPassengers({Key? key, required this.pageName}) : super(key: key);

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
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  serviceRulesColumn(
                    context,
                    'Rules for passengers',
                    'Rules for passengers\nBe polite to the driver. Do not discuss personal matters over the phone or with other passengers that may make the driver uncomfortable.\nClarify the entry number or pickup location on the map. Write in the comments if anything needs to be clarified, for example, \'The entry is on the side of the building\'. Before tapping \'Find driver\', check the address in the ride request.\nIf you have decided not to take the ride, let the driver know immediately and do not forget to cancel your request in the app.\nThe driver waits 5 minutes at the pickup point. If you are running late, call and let the driver know. If you are late for more than 5 minutes you have to pay a waiting fee.\nIf your route changes during the ride, tell the driver immediately. The price of the ride may change, since it depends on the route.\n        If you want to pay for your ride in large bills, let the driver know. Write in the comments how large a bill will need to be changed. Or tell the driver in person at the start of the ride.\n        Do not smoke in the car. Try not to eat during the ride or to drink staining beverages. Treat the driver and other passengers with respect.\n        Specify in the options if:\n        - You need a car seat. Write the number of children and their ages\n        - There will be more than 4 passengers travelling\n        - You have luggage\n        - You are traveling with a pet\n        If a different driver arrives, or if the car or registration number is different, please let us know. On the ride screen with the map, tap \'Complain\' or open the side menu and contact Support.\n        If you did not enjoy your ride, try not to enter into conflict with the driver. Rate the driver immediately after the ride. Don\'t worry — negative ratings are published anonymously. If you want to complain, contact Support.\nIf you leave your belongings in the car, write to us at support@indriver.com. Include the time and route of your ride, and if possible tell us the car\'s make, color and registration number. We\'ll help find your things.\nWrite to support',
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            Positioned(
              bottom: 30,
              width: MediaQuery.of(context).size.width * 0.9,
              child: InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Support())),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 0.5,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15.0, right: 5.0),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.teal,
                          ),
                          child: Icon(Icons.chat_sharp, color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Write to support',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// SizedBox(height: MediaQuery.of(context).size.height * 0.3),
//           Positioned(
//             bottom: 40,
//             width: MediaQuery.of(context).size.width * 0.9,
//             child: InkWell(
//               onTap: () => Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => Support())),
//               child: Container(
//                 height: MediaQuery.of(context).size.height * 0.09,
//                 width: MediaQuery.of(context).size.width * 0.9,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(20),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.2),
//                       spreadRadius: 1,
//                       blurRadius: 0.5,
//                       offset: Offset(0, 3),
//                     )
//                   ],
//                 ),
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 15.0, right: 5.0),
//                       child: Container(
//                         width: 40,
//                         height: 40,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.teal,
//                         ),
//                         child: Icon(Icons.chat_sharp, color: Colors.white),
//                       ),
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       'Write to support',
//                       style: TextStyle(color: Colors.teal, fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
