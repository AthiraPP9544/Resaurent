import 'package:flutter/material.dart';
import 'package:restaurant_app/screen/start_screen.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 117, 134, 23),
          alignment: Alignment.center,
         child:const StartScreen(
         ),
        ),
      ),
    ),
    
  );
}
