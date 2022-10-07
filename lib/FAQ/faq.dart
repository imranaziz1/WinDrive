import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:win_drive/FAQ/Faqwidget.dart';
import 'package:win_drive/FAQ/faq_details.dart';

class FaqScreen extends StatelessWidget {
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
      body: Container(
        color: Colors.grey.shade100,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    "Help",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FaqDetails(
                              name: "hy",
                              subtitle: "bc",
                            )));
              },
              child: FaqWidget("Drivers do not respond", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            FaqDetails(name: "Drivers do not respond", subtitle: "If a driver has not responded to your ride request, try increasing the price of the ride,then resubmit your request,Bear in mind that during rush hour drivers are busier, so expect to pay more for the ride")));
              }),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FaqDetails(
                          name: "hy",
                          subtitle: "bc",
                        )));
              },
              child: FaqWidget("How to leave a review  for a driver", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            FaqDetails(name: "How to leave a review  for a driver", subtitle: "Open the app immediately after the ride is completed. You will see a window where you can evaluate the driver and write a review. If you did not enjoy your ride and you decide to write a negative review, don't worry — the driver will not see that it was you")));
              }),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FaqDetails(
                          name: "hy",
                          subtitle: "bc",
                        )));
              },
              child: FaqWidget("How to complain", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            FaqDetails(name: "How to complain", subtitle: "If you did not enjoy your ride or if you had a conflict with the driver, write to us: open a chat with Support via the side menu or write to us at support@indrive.com\n\nWe look into all complaints and block drivers who violate the rules of our service.")));
              }),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FaqDetails(
                          name: "hy",
                          subtitle: "bc",
                        )));
              },
              child: FaqWidget("How to find belongings I left behind", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            FaqDetails(name: "How to find belongings I left behind", subtitle: "If you have left your belongings in the car, write to us at support@indrive.com. Include the time and route of your ride, and if possible tell us the car's make, color, and registration number. We'll help find your belongings.")));
              }),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FaqDetails(
                          name: "hy",
                          subtitle: "bc",
                        )));
              },
              child: FaqWidget("How to use couriers", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            FaqDetails(name: "How to use couriers", subtitle: "How to request delivery\nOpen the City section. The service icons are located directly beneath the map. Swipe them to the left to see all, then select Couriers. Select the pickup and delivery locations for the parcel and describe its contents. Propose the price that you're willing to pay for the delivery. Let the courier know in advance who will pay for delivery – you or the person receiving the parcel.\n \nWhat parcels cannot be sent\nAlcoholic beverages, prohibited goods, and items restricted for sale under the law may not be sent.\n\nParcel requirements\n\nDocuments, groceries, and other small parcels may be sent with couriers. The maximum parcel weight is 20 kg for delivery by car, 15 kg for delivery by motorcycle/moped, and 10 kg on foot. The cost of the parcel contents must not exceed 5,000 rubles.\n\nHow to track a courier order\n\nOpen the map, and in the lower right corner tap the icon shaped like a shield. Share the ride to see the courier's current location on the map.\n\n\nParcel security\nAll couriers verify their documents and their identity. Only after this can they view and accept requests. During the delivery you can see the courier's current location on the map. The delivery status is displayed in the app.")));
              }),
            ),


            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    "Feedback",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2),
              height: 45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.chat_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Technical Support chat",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2),
              height: 45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Write to e-mail",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
