import 'package:flutter/material.dart';
import 'package:win_drive/Support/support.dart';
class FaqDetails extends StatelessWidget {
  final String name;
  final String subtitle;
  FaqDetails({required this.name,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 2,
        title: Text(
          "FAQ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
        Container(
        height: MediaQuery.of(context).size.height*0.95,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: Colors.teal),

                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back_ios_new,color: Colors.teal,size: 20,),
                          Text("Back",style: TextStyle(
                              fontWeight: FontWeight.w400,fontSize: 18
                          ),)
                        ],
                      ),

                    ),

                  ),
                ),
                SizedBox(height: 20,),
                Text("${name}",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),),
                SizedBox(height: 20,),
                Text("${subtitle}",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),),
                SizedBox(height: 200),
              ],),
          ),
        ),

      ),
            Positioned(
              bottom: 10,
                width: MediaQuery.of(context).size.width,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Support()));
                      },
                      child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 0.5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
              ),
              child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.teal,

                              ),
                              child: Icon(Icons.chat_sharp,size: 20,color: Colors.white,),
                            ),
                            SizedBox(width: 10,),
                            Text("Write in support",style: TextStyle(
                                fontSize: 16,color: Colors.teal

                            ),)
                          ],
                        ),
                      ),
              ),
            ),
                    ),
                  ],
                ))

          ],
        ),
      ),
    );
  }
}
