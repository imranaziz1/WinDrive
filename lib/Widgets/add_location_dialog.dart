import 'package:flutter/material.dart';
class AddLocationDialog extends StatelessWidget {
  const AddLocationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: MediaQuery.of(context).size.height*0.9,
        width: MediaQuery.of(context).size.width*0.95,
      ),
    );
  }
}
