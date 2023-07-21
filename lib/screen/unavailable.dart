

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant_app/screen/profile.dart';
import 'package:restaurant_app/screen/home_location.dart';


class unavailable extends StatelessWidget {
  const unavailable({
    super.key
  });
  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(children: [
        SizedBox(height: 250,),
        Text(
          'Sorry....',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
        ),
        SizedBox(height: 15,),
        Text(
          'This Option is Not Available for Now',
        ),
        SizedBox(height: 180),
        TextButton(
         
  child: Text(
    'Main Menu',
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  ),
  onPressed: (){
     Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LocationScreen(),
                ));
  },
)
      ],)
    );
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 222),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 117, 134, 23),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: 40,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LocationScreen(),
                ));
          },
        ),
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