import 'package:flutter/material.dart';
import 'package:win_drive/Setting/rulesTerms/mainRulesTerms.dart';

import '/Setting/rulesTerms/serviceRules/serviceRulesWidget.dart';

class BlockingAccount extends StatelessWidget {
  BlockingAccount({Key? key, required this.pageName}) : super(key: key);

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
        child: serviceRulesColumn(
          context,
          'Blocking an account',
          'When a passenger\'s rating falls to 3 stars, the passenger\'s profile is automatically blacked, or autobanned. Ratings fall if a passenger frequently:\n- receives complaints from drivers\n- cancels ride requests already accepted by drivers\n- is late to the pickup point or does not emerge at all\n- does not accept, passes over, or cancels driver proposals at the initial price\n\nWe will send a push notification in advance if your account is at risk of being blocked. The block period can be from one hour to several days. In certain circumstances a profile can be blocked permanently.',
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     leading: GestureDetector(
    //         onTap: () => Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //                 builder: (context) => RulesTerms(pageName: "Rules and Terms"))),
    //         child: const Icon(Icons.arrow_back)),
    //     backgroundColor: Colors.white,
    //     foregroundColor: Colors.black,
    //     title: Text(pageName),
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.all(18.0),
    //     child: Stack(
    //       children: [
    //         Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             InkWell(
    //               onTap: Navigator.of(context).pop,
    //               child: Container(
    //                 height: MediaQuery.of(context).size.height * 0.05,
    //                 width: MediaQuery.of(context).size.width * 0.35,
    //                 decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(30),
    //                     border: Border.all(
    //                         width: 3.0, color: Colors.lightGreenAccent)),
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Icon(Icons.arrow_back_ios_new, color: Colors.lightGreenAccent,),
    //                     Text('Back', textAlign: TextAlign.center,
    //                         style: TextStyle(color: Colors.lightGreenAccent, fontWeight: FontWeight.w400, fontSize: 18.0)),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             SizedBox(height: MediaQuery.of(context).size.height * 0.03),
    //             Text('Blocking an account', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),),
    //             SizedBox(height: MediaQuery.of(context).size.height * 0.03),
    //             Text(
    //               'When a passenger\'s rating falls to 3 stars, the passenger\'s profile is automatically blacked, or autobanned. Ratings fall if a passenger frequently:\n- receives complaints from drivers\n- cancels ride requests already accepted by drivers\n- is late to the pickup point or does not emerge at all\n- does not accept, passes over, or cancels driver proposals at the initial price\n\nWe will send a push notification in advance if your account is at risk of being blocked. The block period can be from one hour to several days. In certain circumstances a profile can be blocked permanently.',
    //               textAlign: TextAlign.justify,
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
