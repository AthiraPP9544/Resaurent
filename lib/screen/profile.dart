import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant_app/screen/home_location.dart';

class ProScreen extends StatelessWidget {
  const ProScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      children: [
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'My Profile                                     ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        )
      ],
    );

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 233, 222),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 117, 134, 23),
          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back_ios),
          //   iconSize: 40,
          //   onPressed: () {},
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
        body: Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Column(children: [
            content,
            Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                     Text(
                        'First Name                                                      ',
                        style: TextStyle(fontSize: 18),
                      ),
                    
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 25),
                              child: Container(
                                decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 248, 248, 247),),
                                width: 320,
                                height: 60,
                              ),
                            ),
                            SizedBox(height: 12),
                             Text(
                                'Last Name                                                  ',
                                style: TextStyle(fontSize: 18),
                              ),
                            SizedBox(height: 12),
                           Container(
                               decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 253, 253, 252),),
                                width: 320,
                                height: 60,
                              ),
                            SizedBox(height: 12),
                             Text(
                                'Address                                              work',
                                style: TextStyle(fontSize: 18),
                              ),
                                SizedBox(height: 12),
                              Container(
                               decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 247, 248, 247),),
                                width: 320,
                                height:90,
                              ),
                            
                            SizedBox(height: 5),
                                Text(
                                  'Change                                                       ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                SizedBox(height: 12),
                               Text(
                                '                                                    Home',
                                style: TextStyle(fontSize: 18),
                              ),
                          
                            SizedBox(height: 12),
                             Container(
                                decoration:BoxDecoration( borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 248, 249, 247),),
                                width: 320,
                                height: 90,
                              ),
                              SizedBox(height:5),
                                Text(
                                  'Change                                                       ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),

                                SizedBox(height: 30),
                             Container(
                             
                                
                                decoration:BoxDecoration( borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 117, 134, 23),),
                                width: 320,
                                height: 40,
                                child:InkWell(
                            onTap: (){
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) =>LocationScreen(),));
                            },
                                child: const Center(child:Text(
                                '  Continue to Home',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18),
                              ),
                          
                                ),
                              ),
                           
                         ) ],
                        )
                      ],
                    )
                  ],
                )),
          ]),
        ));
  }
}
