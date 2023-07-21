import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant_app/screen/courses_category.dart';
import 'package:restaurant_app/numberstepper.dart';

class MenuMeals extends StatefulWidget {
  const MenuMeals({super.key});

  @override
  State<MenuMeals> createState() => _MenuMealsState();
}

class _MenuMealsState extends State<MenuMeals> {
  var _selectedNumber=0;
  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
        child: Column(
      children: [
        SizedBox(height: 12),
        Text(
          'Combo Meals',
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
                    builder: (context) => Categories(),
                  ));
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.person),
              iconSize: 30,
              onPressed: () {
                // Handle the action when the profile icon is pressed
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            content,
            Column(children: [
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Column(
                        children: [
                          const Text(
                            '  Lollipop Chiken',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              const Text(
                                '  Qty',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                    width: 78,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 192, 198, 202),
                                      border: Border.all(
                                        color: Colors.black, // Border color
                                        width: 1, // Border width
                                      ),
                                    ),
                                   child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
                    setState(() {
                      _selectedNumber=value;
                    });
                  }),
                                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/food.jpg',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ]
            ),
            SizedBox(height: 13),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Column(
                        children: [
                          const Text(
                            'Hariyali Kabab',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:10.0),
                                child: const Text(
                                  '  Qty',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                    width: 78,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 192, 198, 202),
                                      border: Border.all(
                                        color: Colors.black, // Border color
                                        width: 1, // Border width
                                      ),
                                    ),
                                   child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
                    setState(() {
                      _selectedNumber=value;
                    });
                  }),
                                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 105,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/food.jpg',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
          const  SizedBox(height: 13),
           Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Column(
                        children: [
                          const Text(
                            '  Red kabab Chiken',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              const Text(
                                'Qty',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                    width: 78,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 192, 198, 202),
                                      border: Border.all(
                                        color: Colors.black, // Border color
                                        width: 1, // Border width
                                      ),
                                    ),
                                   child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
                    setState(() {
                      _selectedNumber=value;
                    });
                  }),
                                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/food.jpg',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
          const  SizedBox(height: 13),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Column(
                        children: [
                          const Text(
                            '  Hot wings Chiken',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              const Text(
                                '  Qty',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                    width: 78,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 192, 198, 202),
                                      border: Border.all(
                                        color: Colors.black, // Border color
                                        width: 1, // Border width
                                      ),
                                    ),
                                   child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
                    setState(() {
                      _selectedNumber=value;
                    });
                  }),
                                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/food.jpg',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 13),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Column(
                        children: [
                          const Text(
                            '  Spicy wings Chiken',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              const Text(
                                'Qty',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                    width: 78,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 192, 198, 202),
                                      border: Border.all(
                                        color: Colors.black, // Border color
                                        width: 1, // Border width
                                      ),
                                    ),
                                   child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
                    setState(() {
                      _selectedNumber=value;
                    });
                  }),
                                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/food.jpg',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 13),
           Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Column(
                        children: [
                          const Text(
                            '  Shawarma Roll',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              const Text(
                                '  Qty',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                    width: 78,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 192, 198, 202),
                                      border: Border.all(
                                        color: Colors.black, // Border color
                                        width: 1, // Border width
                                      ),
                                    ),
                                   child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
                    setState(() {
                      _selectedNumber=value;
                    });
                  }),
                                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/food.jpg',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 13),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Column(
                        children: [
                          const Text(
                            '  Shawarma plateS',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              const Text(
                                '  Qty',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                             Container(
                                    width: 78,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 192, 198, 202),
                                      border: Border.all(
                                        color: Colors.black, // Border color
                                        width: 1, // Border width
                                      ),
                                    ),
                                   child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
                    setState(() {
                      _selectedNumber=value;
                    });
                  }),
                                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/food.jpg',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
          ]),
        ));
  }
}