import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant_app/screen/home_location.dart';
import 'package:restaurant_app/screen/success.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});
  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      children: [
        SizedBox(height: 18),
        Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: Text(
            'Select a Method of Payment',
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ProScreen(),
                //     ));
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
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 1.0, top: 25),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 248, 248, 247),
                                ),
                                width: 320,
                                height: 80,
                                child: const Center(
                                  child: Text(
                                    '  Gpay,Phone Pe,Paytm                       ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 4, 4, 4), fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 12),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 253, 253, 252),
                              ),
                              width: 320,
                              height: 80,
                              child: const Center(
                                  child: Text(
                                    '  UPI ID                                                 ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 8, 8, 8), fontSize: 18),
                                  ),
                                ),
                            ),
                            
                            SizedBox(height: 12),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 247, 248, 247),
                              ),
                              width: 320,
                              height: 80,
                              child: const Center(
                                  child: Text(
                                    
                                    '  Debit/Credit Card                            ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 10, 10, 10), fontSize: 18),
                                  ),
                                ),
                            ),
                            
                            SizedBox(height: 12),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 248, 249, 247),
                              ),
                              width: 320,
                              height: 80,
                              child: const Center(
                                  child: Text(
                                    '  Internet Banking                            ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 8, 8, 8), fontSize: 18),
                                  ),
                                ),
                            ),
                            SizedBox(height: 12),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 248, 249, 247),
                              ),
                              width: 320,
                              height: 90,
                              child: const Center(
                                  child: Text(
                                    '  Cash on Delivery                           ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 19, 19, 19), fontSize: 18),
                                  ),
                                ),
                            ),
                            SizedBox(height: 30),
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
                                        builder: (context) => Success(),
                                      ));
                                },
                                child: const Center(
                                  child: Text(
                                    '  Continue to Payment',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
          ]),
        ));
  }
}
