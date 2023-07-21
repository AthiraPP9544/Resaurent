import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant_app/screen/menu.dart';
import 'package:restaurant_app/screen/menu_apetizer.dart';
import 'package:restaurant_app/screen/menu_starters.dart';
import 'package:restaurant_app/screen/menu_meals.dart';
import 'package:restaurant_app/screen/profile.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
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
                  builder: (context) => MenuScreen(),
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
        body: SingleChildScrollView(
            child: Column(
          children: [
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
                child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MenuApetitis(),
                                ));
                          },
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                     const Text(
                        '   Soups',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 170,),
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
              ),),
              SizedBox(height: 13),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                
                width: 370,
                height: 80,
                child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MenuStarters(),
                                ));
                          },
                child:  Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        '   Starters',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                       SizedBox(width: 150),
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
              ),),
              SizedBox(height: 13),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MenuMeals(),
                                ));
                          },
                child:  Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        '   Combo Meals',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                       SizedBox(width: 100,),
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
              ),),
              SizedBox(height: 13),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child:  Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        '  Jumbo Meals',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 110,),
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
              ),
              SizedBox(height: 13),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child:  Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        '   Bread Items',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 120,),
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
              ),
              SizedBox(height: 13),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child:  Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        '   Rice & Noodles',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 95),
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
              ),
              SizedBox(height: 13),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child:  Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        '   Curry Items ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 120),
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
              ),
              SizedBox(height: 13),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child: Padding(
                  padding: EdgeInsets.only(left: 15,),
                  child: Row(
                    children: [
                      Text(
                        '   Salads',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 170,),
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
              ),
              SizedBox(height: 13),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child:Padding(
                  padding: EdgeInsets.only(left: 15,),
                  child: Row(
                    children: [
                      Text(
                        '   Continental',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 125),
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
              ),
              SizedBox(height: 13),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 80,
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        '   Traditional',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 135,),
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
              ),
            ])
          ],
        )));
  }
}
