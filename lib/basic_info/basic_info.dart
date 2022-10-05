



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicInfo extends StatelessWidget {
  const BasicInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 1,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),),
        actions: <Widget> [
          TextButton(onPressed: (){

          } , child: Text('Close',
            textAlign: TextAlign.center,
          ))
        ],

      ),
      body: Container(
        color: Colors.white,
        margin: const EdgeInsets.all(10.0),

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [

              const Icon(Icons.person,
                color: Colors.pink,
                size: 100.0,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton.icon(onPressed: (){},
                    icon: const Icon(Icons.person_outline, size: 20,),
                    label: const Text('Take a photo'),
                  ),

                  OutlinedButton.icon(onPressed: (){},
                    icon: const Icon(Icons.person_outline, size: 20,),
                    label: const Text('Choose a photo'),
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    initialValue: 'First Name',
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_outline,
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: 'Last Name',
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_outline,
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: 'Date of birth',
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.calendar_today_rounded,
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: 'E-mail',
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: 'Country',
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.home_work_outlined,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
