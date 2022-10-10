import 'package:flutter/material.dart';

Column serviceRulesColumn(context, String title, String paragraph) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      InkWell(
        onTap: Navigator.of(context).pop,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 3.0, color: Colors.teal)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: Colors.teal,
              ),
              Text('Back',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0)),
            ],
          ),
        ),
      ),
      SizedBox(height: MediaQuery.of(context).size.height * 0.03),
      Text(
        title,
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
      ),
      SizedBox(height: MediaQuery.of(context).size.height * 0.03),
      Text(
        paragraph,
        textAlign: TextAlign.justify,
      ),
    ],
  );
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
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

// import 'package:flutter/material.dart';
// import 'package:win_drive/Setting/rulesTerms/mainRulesTerms.dart';
//
// import '/Support/support.dart';

// Scaffold serviceRulesScaffold(context, String pageName) {
//   return Scaffold(
//     appBar: AppBar(
//       leading: GestureDetector(
//           onTap: () => Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) =>
//                       RulesTerms(pageName: "Rules and Terms"))),
//           child: const Icon(Icons.arrow_back)),
//       backgroundColor: Colors.white,
//       foregroundColor: Colors.black,
//       title: Text(pageName),
//     ),
//     body: Padding(
//       padding: const EdgeInsets.all(18.0),
//       child: Stack(
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               InkWell(
//                 onTap: Navigator.of(context).pop,
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.05,
//                   width: MediaQuery.of(context).size.width * 0.35,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       border: Border.all(
//                           width: 3.0, color: Colors.teal)),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.arrow_back_ios_new,
//                         color: Colors.teal,
//                       ),
//                       Text('Back',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               color: Colors.teal,
//                               fontWeight: FontWeight.w400,
//                               fontSize: 18.0)),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: MediaQuery.of(context).size.height * 0.03),
//               Text(
//                 'Blocking an account',
//                 style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
//               ),
//               SizedBox(height: MediaQuery.of(context).size.height * 0.03),
//               Text(
//                 'When a passenger\'s rating falls to 3 stars, the passenger\'s profile is automatically blacked, or autobanned. Ratings fall if a passenger frequently:\n- receives complaints from drivers\n- cancels ride requests already accepted by drivers\n- is late to the pickup point or does not emerge at all\n- does not accept, passes over, or cancels driver proposals at the initial price\n\nWe will send a push notification in advance if your account is at risk of being blocked. The block period can be from one hour to several days. In certain circumstances a profile can be blocked permanently.',
//                 textAlign: TextAlign.justify,
//               ),
//               SizedBox(height: MediaQuery.of(context).size.height * 0.3),
//             ],
//           ),
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
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
