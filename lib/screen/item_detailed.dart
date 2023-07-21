import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant_app/screen/menu_apetizer.dart';
import 'package:restaurant_app/numberstepper.dart';
import 'package:restaurant_app/screen/profile.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  var _selectedNumber=0;
  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Column(
        children: [
          // Text(
          //   'Select an Outlet Near you!',
          // )
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 222),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 117, 134, 23),
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_ios),
        //   iconSize: 40,
        //   onPressed: () {
        //     // Navigator.push(
        //     //     context,
        //     //     MaterialPageRoute(
        //     //       builder: (context) => MenuScreen(),
        //     //     ));
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
      body:  Column(
            children: [
              Row(children: [
                Container(
                  width:385,
                  height:200,
                  child:SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(children:[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 150,
                    height: 150,
                    
                    
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/2.jpg', // Replace this with your image file path
                        fit: BoxFit.cover,
                        // This determines how the image should be inscribed into the box.
                      ),
                    ),
                  ),
                ), // Add some space between the containers
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/3.jpg', // Replace this with your image file path
                        fit: BoxFit.cover,
                        // This determines how the image should be inscribed into the box.
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10), // Add some space between the containers
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/1.jpg', // Replace this with your image file path
                        fit: BoxFit
                            .cover, // This determines how the image should be inscribed into the box.
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/4.jpg', // Replace this with your image file path
                        fit: BoxFit
                            .cover, // This determines how the image should be inscribed into the box.
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/5.jpg', // Replace this with your image file path
                        fit: BoxFit
                            .cover, // This determines how the image should be inscribed into the box.
                      ),
                    ),
                  ),
                ),],)))
              ]),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                
                Padding(
                  padding: const EdgeInsets.only(left:28.0),
                  child: Text(
                    
                    'Hot & Sour Chiken Soup                    ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left:28.0),
                  child: Text(
                    'Chines Cusine                 ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
              ]),
               SizedBox(
                height: 10,
              ),
              Row(children: [
                Padding(
                   padding: const EdgeInsets.only(left:28.0),
                  child: Text(
                    '100% Non-Veg             ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(width: 100),
                Stack(
          alignment: Alignment.center,
          children: [
            Icon(Icons.crop_square_sharp, color: Colors.red, size: 50),
            Icon(Icons.circle, color: Colors.red, size: 18),
          ],
        ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Padding(
                   padding: const EdgeInsets.only(left:28.0),
                  child: Text(
                    'Description                           ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:Color.fromARGB(145, 7, 148, 0),
                    ),
                  ),
                ),
              ]),
              
           
                Padding(
                   padding: const EdgeInsets.only(top:1,left:28.0),
                  child: Text(
                    'Hot and sour Chiken soup:A flery blend of tender chiken,mushrooms,bamboo shoots,carrots,and bell peppers in a rich broth.with a tantalizing mix of soy sauce,rice vinegar and chill paste,this soup delivers a perfect balance of heat and tang.A deliciously satisfying culinary adventure in every spoonfull',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(145, 14, 16, 14),
                    ),
                  ),
                ),
                 Row(children: [
                Padding(
                   padding: const EdgeInsets.only(left:28.0,top: 5),
                  child: Text(
                    'Add this item ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 153, 5, 44),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                  height: 150,
                ),Container(
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
                        
                      
                    
              
              
              
               
                 Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:28.0),
                    child: Container(
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
                                builder: (context) => MenuApetitis(),
                              ));
                        },
                        child: const Center(
                          child: Text(
                            '  Add more Dishes',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
              ]));
             
            
  }
}
