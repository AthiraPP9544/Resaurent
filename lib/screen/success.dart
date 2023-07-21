import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant_app/screen/profile.dart';
import 'package:restaurant_app/screen/home_location.dart';


class Success extends StatelessWidget {
  const Success({
    super.key
  });
  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(children: [
        SizedBox(height: 25,),
        Text(
          'Select Method of Payment',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
        ),
        SizedBox(height: 190,),
        Text(
          'Success !',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
        ),
        SizedBox(height: 15,),
        Text(
          'Payment Successfully Completed',
        ),
        SizedBox(height: 120),
       
        Text(
          'You will be Redirected to Main Menu\n                      in 05 Seconds',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
        ),
        SizedBox(height: 25,),
        Text(
          'or',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
        ),
        SizedBox(height: 50),
       Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 117, 134, 23),
                              ),
                              width: 320,
                              height: 40,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LocationScreen(),
                                      ));
                                },
                                child: const Center(
                                  child: Text(
                                    '  Continue to Home',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            )
      ],)
    );
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 222),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 117, 134, 23),
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_ios),
        //   iconSize: 40,
        //   onPressed: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => LocationScreen(),
        //         ));
        //   },
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            iconSize: 30,
            onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProScreen(),
                ));
          },
          ),
        ],
        
      ),
    body: content,
      );
    
}}