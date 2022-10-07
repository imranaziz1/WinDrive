
import 'package:flutter/material.dart';
import 'package:win_drive/MainPage/vehicle_container.dart';

import '../CustomButtons/custom_button.dart';
import 'custom_text_field.dart';

class BottomMainContainer extends StatelessWidget {
  const BottomMainContainer({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        height: screenSize.height * 0.5,
        child: SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CustomContainer(
                            title: "Car AC",
                            vehicleImage: "assets/imran/bycicle.png",
                            onClick: () {}),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: () {},
                        child: CustomContainer(
                            title: "CAR",
                            vehicleImage: "assets/imran/box_truck.png",
                            onClick: () {}),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: () {},
                        child: CustomContainer(
                            title: "Mini car",
                            vehicleImage: "assets/imran/door_to_door.png",
                            onClick: () {}),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: () {},
                        child: CustomContainer(
                            title: "Moto",
                            vehicleImage: "assets/imran/sport_car.png",
                            onClick: () {}),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: () {},
                        child: CustomContainer(
                            title: "Auto",
                            vehicleImage: "assets/imran/box_truck.png",
                            onClick: () {}),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: () {},
                        child: CustomContainer(
                            title: "Truck",
                            vehicleImage: "assets/imran/box_truck.png",
                            onClick: () {}),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 2,
              ),
              CustomTextField(
                  initialTitle: "Current Location",
                  icon: Icons.center_focus_strong,
                  onClick: () {}),
              CustomTextField(
                  initialTitle: "Destination",
                  icon: Icons.center_focus_strong,
                  onClick: () {}),
              TextFormField(
                onTap: (){

                },
                cursorColor: Colors.teal,
                initialValue: "Offer your fare",
                maxLength: 20,
                decoration:
                InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  icon: Text("PKR",style: TextStyle(
                    color: Colors.blue,
                  ),),

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6200EE)),
                  ),
                ),
              ),
              CustomTextField(
                  initialTitle: "Comment and wishes",
                  icon: Icons.chat,
                  onClick: () {}),
              CustomButton(title: "Find a driver", onClick: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
