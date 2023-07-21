import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant_app/screen/home_location.dart';
import 'package:restaurant_app/screen/courses_category.dart';
import 'package:restaurant_app/screen/profile.dart';
import 'package:restaurant_app/screen/unavailable.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
        child: Column(
      children: [
        SizedBox(height: 12),
        Text(
          'Select a Menu Category',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        )
      ],
    ));

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
      body: Padding(
        padding: const EdgeInsets.only(left: 1.0),
        child: Column(children: [
          content,
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 249, 246, 246),
                        ),
                        width: 150,
                        height: 150,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Categories(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/food.jpg',
                                      width: 150,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned.fill(
                                      top: 80,
                                      bottom: 10,
                                      left: 10,
                                      right: 10,
                                      child: Container(
                                        color: Colors.white,
                                         child: const Center(
                    child: Text(
                      'Non-Veg',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                                        
                                      ),
                                    )
                                  ],
                                ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 35),
                  Column(
                    children: [
                      SizedBox(height: 30),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 245, 243, 243),
                        ),
                        width: 150,
                        height: 150,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Categories(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/food.jpg',
                                      width: 150,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned.fill(
                                      top: 80,
                                      bottom: 10,
                                      left: 10,
                                      right: 10,
                                      child: Container(
                                        color: Colors.white,
                                         child: const Center(
                    child: Text(
                      'Veg',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                                      ),
                                    )
                                  ],
                                ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 250, 249, 249),
                      ),
                      width: 150,
                      height: 150,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Categories(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/food.jpg',
                                      width: 150,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned.fill(
                                       top: 80,
                                      bottom: 10,
                                      left: 10,
                                      right: 10,
                                      child: Container(
                                        color: Colors.white,
                                        child: const Center(
                    child: Text(
                      'Mixed',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 245, 245),
                  ),
                  width: 350,
                  height: 60,
                  child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => unavailable(),
                                ));
                          },
                  child: const Center(
                    child: Text(
                      '    Customize Menu',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )  ],
            ),
          )
        ]),
      ),
    );
  }
}
