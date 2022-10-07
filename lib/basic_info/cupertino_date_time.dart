


import 'package:flutter/cupertino.dart';

class CupertinoDateTime extends StatefulWidget {
  const CupertinoDateTime({Key? key}) : super(key: key);

  @override
  State<CupertinoDateTime> createState() => _CupertinoDateTimeState();
}

class _CupertinoDateTimeState extends State<CupertinoDateTime> {
  @override
  Widget build(BuildContext context) {
    return Container(

      // Column(
      //   children: [
      //     CupertinoDatePicker(
      //       mode: CupertinoDatePickerMode.date,
      //       onDateTimeChanged: (value){
      //         if(value != null && value != selectedDate)
      //           setState(() {
      //             selectedDate = value;
      //           });
      //       },
      //       initialDateTime = DateTime.now(),
      //
      //     ),
      //   ],
      // ),
    );
  }
}
