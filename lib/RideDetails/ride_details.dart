import 'package:flutter/material.dart';
class RideDetails extends StatelessWidget {
  const RideDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 2,
        title: Text(
          "Back",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0.5,
                  blurRadius: 3,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                     shape: BoxShape.circle
                    ),
                    child: Icon(
                      Icons.person_outline_rounded,color: Colors.white,size: 40,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Syad Muhammad "),
                            Icon(Icons.star,color: Colors.yellowAccent,size: 20,),
                            Text("4.8"),

                          ],
                        ),
                        Text("Red moter bike Union star, RIL 3307"),

                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent.shade100,
                        shape: BoxShape.circle
                    ),
                    child: Icon(
                      Icons.phone,color: Colors.black,size: 30,
                    ),
                  )
                ],
              ),
            ),
          ),
         Container(
           width: MediaQuery.of(context).size.width*0.95,
           decoration: BoxDecoration(
             border: Border.all(width: 1,color: Colors.grey.shade300),
             borderRadius: BorderRadius.circular(10),
           ),
           child: Column(
             children: [
               Container(
                 height: 200,
                 width: MediaQuery.of(context).size.width*0.95,
                 decoration: BoxDecoration(
                     color: Colors.grey,
                   borderRadius: BorderRadius.circular(10),

                   image: DecorationImage(
                     fit: BoxFit.fill,
                     image: AssetImage("assets/images/download (1).jfif")
                   )
                 ),

               ),
               SizedBox(height: 10,),

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 18.0),
                 child: Row(
                   children: [
                     Icon(Icons.date_range,color: Colors.grey,),
                     Text("October 07,2022,05:40 AM"),
                   ],
                 ),
               ),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 18.0),
                 child: Row(
                   children: [
                     Container(
                       height: 30,
                       width: 30,
                       decoration: BoxDecoration(
                           color: Colors.blue,
                           shape: BoxShape.circle
                       ),
                       child: Center(
                           child: Text(
                             "A",
                             style: TextStyle(color: Colors.white),
                           )),
                     ),
                     SizedBox(width: 10,),
                     Text("6th Road"),
                   ],
                 ),
               ),
               SizedBox(height: 10,),

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 18.0),
                 child: Row(
                   children: [
                     Container(
                       height: 30,
                       width: 30,
                       decoration: BoxDecoration(
                           color: Colors.blue,
                           shape: BoxShape.circle
                       ),
                       child:  Center(
                           child: Text(
                             "B",
                             style: TextStyle(color: Colors.white),
                           )),
                     ),
                     SizedBox(width: 10,),
                     Text("Faizabad"),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(18.0),
                 child: Row(
                   children: [
                     Text(" PKR  199, Cash",style: TextStyle(fontSize: 15),),
                   ],
                 ),
               ),
             ],
           ),
         ),
          SizedBox(height: 40,),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width*0.7,
            decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)
              
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.chat_sharp,size: 20,color: Colors.black.withOpacity(0.8),),
            SizedBox(width: 5,),
            Text("Support")
            ]),
          )

        ],
      ),
    );
  }
}
