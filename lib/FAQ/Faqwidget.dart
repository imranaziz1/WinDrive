import 'package:flutter/material.dart';
class FaqWidget extends StatelessWidget {
  String name;
  VoidCallback onPressed;

FaqWidget(this.name, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap:onPressed,
      //       (){
      //     Navigator.push(context, MaterialPageRoute(builder: (context)=>onPressed));
      //   }
      // ,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 2),
        height: 45,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${name}",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400),),
              Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
