import 'package:flutter/material.dart';

import '../MainPage/home_page.dart';
import '../RideDetails/ride_details.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class RequestHistory extends StatelessWidget {
  const RequestHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 2,
        title: Text(
          "Request History",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:InkWell(

                            onTap: () {
                              showMaterialModalBottomSheet(

                                  shape: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.only(
                                      topLeft:
                                      Radius.circular(30),
                                      topRight:
                                      Radius.circular(30),
                                    ),
                                    borderSide:
                                    BorderSide.none,
                                  ),
                                  context: context,
                                  builder: (context) =>Container(
                                    height: MediaQuery.of(context).size.height*0.5,
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(height: 10,),
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RideDetails()));
                                          },
                                          child: Container(
                                            height: 50,
                                            width: MediaQuery.of(context).size.width*0.9,
                                            decoration: BoxDecoration(
                                              color: Colors.teal,
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Center(child: Text("Ride Details",style: TextStyle(fontSize: 18),)),

                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                          },
                                          child: Container(
                                            height: 50,
                                            width: MediaQuery.of(context).size.width*0.9,
                                            decoration: BoxDecoration(
                                                color: Colors.teal,
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Center(child: Text("Repeat Request",style: TextStyle(fontSize: 18),)),

                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                          },
                                          child: Container(
                                            height: 50,
                                            width: MediaQuery.of(context).size.width*0.9,
                                            decoration: BoxDecoration(
                                                color: Colors.teal,
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Center(child: Text("Return route",style: TextStyle(fontSize: 18),)),

                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            height: 50,
                                            width: MediaQuery.of(context).size.width*0.9,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.2),
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Center(child: Text("Delete ride request",style: TextStyle(fontSize: 18,color: Colors.red),)),

                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            height: 50,
                                            width: MediaQuery.of(context).size.width*0.9,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.2),
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Center(child: Text("Close",style: TextStyle(fontSize: 18,color: Colors.grey),)),

                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                      );
                            },

                        child: Container(

                          height: 100,
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.12),
                                spreadRadius: 1,
                                blurRadius: 0.5,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("50 min",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                    Text("6th road",style: TextStyle(color: Colors.black,fontSize: 17),),

                                    Text("ghori town",style: TextStyle(color: Colors.black,fontSize: 17),),

                                    Text("PKR 200",style: TextStyle(color: Colors.black,fontSize: 17),),

                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Completed",style: TextStyle(color: Colors.teal),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
