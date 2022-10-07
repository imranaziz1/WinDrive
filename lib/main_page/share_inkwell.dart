
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareInkWell extends StatelessWidget {
  const ShareInkWell({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Share.share("https://www.youtube.com/watch?v=jMSxWfrszMA");

      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),

            child: Icon(Icons.share_outlined,size: 25,
            ),


          ),
        ),
      ),
    );
  }
}
