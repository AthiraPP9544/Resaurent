

import 'package:flutter/material.dart';
import 'package:restaurant_app/screen/home_location.dart';

class StartScreen extends StatelessWidget{
  const StartScreen({super.key});

@override
  Widget build( context) {
   return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
              Image.asset(
                'assets/images/fd.gif', // Replace with your image path
                width: 200,
                height: 200,
              ),
              const Text(
                'JUSTEAT',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

                ),
                ),
                const SizedBox(height: 80),
                OutlinedButton.icon(
                  onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LocationScreen(), // Replace with the next screen's widget
                ),
              );
            },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),

                  label: const Text('continue'),
                  icon: const Icon(Icons.arrow_right_alt),
                )


    ]),
   );
    
   }
}


