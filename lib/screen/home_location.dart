import 'package:flutter/material.dart';
import 'package:restaurant_app/screen/cart_screen.dart';
import 'package:restaurant_app/screen/menu.dart';
import 'package:restaurant_app/screen/profile.dart';
import 'package:restaurant_app/screen/unavailable.dart';


class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content =  Center(
        child: Align(
      alignment: Alignment.centerLeft,
      child: Column(children: [
        SizedBox(height: 20),
        Text(
          'Select an outlet near you!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Padding(
          padding:  EdgeInsets.all(15),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              hintText: 'Search for your location',
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search),
            ),
            onSubmitted: (value){
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => unavailable(),
                )
                );
            },
          ),
        ),
      ]),
    )
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 222),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 117, 134, 23),
        leading: IconButton(
          icon: const Icon(Icons.shopping_cart),
          iconSize: 30,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
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
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            children: [
              content,
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 25),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 252, 248, 248),
                          ),
                          width: 125,
                          height: 125,
                          child:InkWell(
                            onTap: (){
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) =>MenuScreen(),));
                            },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/ppp.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Kannur',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 247, 245, 245),
                          ),
                          width: 125,
                          height: 125,
                          child:InkWell(
                            onTap: (){
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) =>MenuScreen(),));},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/ppp.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Payyannur',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ]),),
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 247, 245, 245),
                          ),
                          width: 125,
                          height: 125,
                          child:InkWell(
                            onTap: (){
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) =>MenuScreen(),));},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/ppp.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Koothuparamba',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ]),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        SizedBox(height: 30),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 247, 244, 244),
                            ),
                            width: 125,
                            height: 125,
                            child:InkWell(
                            onTap: (){
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) =>MenuScreen(),));},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/images/ppp.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Thalassery',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),),
                            ),
                        SizedBox(height: 30),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 247, 244, 244),
                            ),
                            width: 125,
                            height: 125,
                            child:InkWell(
                            onTap: (){
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) =>MenuScreen(),));},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/images/ppp.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Thaliparamba',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),),
                            ),
                        SizedBox(height: 30),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 247, 245, 245),
                          ),
                          width: 125,
                          height: 125,
                          child:InkWell(
                            onTap: (){
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) =>MenuScreen(),));},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/ppp.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Eranholi',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ]),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 56.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 251, 248, 248),
                      ),
                      width: 230,
                      height: 50,
                      child: const Center(
                        child: Text(
                          '          Nothing near you?\nFind your collaborative Outlets',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
