import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:i_want_to_show_picture/drawer.dart';
import 'package:i_want_to_show_picture/pages/Biratnagar.dart';
import 'package:i_want_to_show_picture/pages/Birjunj.dart';
import 'package:i_want_to_show_picture/pages/Chitwanhospital.dart';
import 'package:i_want_to_show_picture/pages/Loginpage.dart';
import 'package:http/http.dart' as http;
import 'package:i_want_to_show_picture/pages/Nawaparasi.dart';
import 'package:i_want_to_show_picture/pages/kathmanduhospital.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Center(
          child: Card(
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(30)),
            color: Colors.white.withOpacity(0.6),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Icon(
                    Icons.share_location,
                    color: Colors.purple,
                    size: 50,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, top: 20, right: 40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(400, 50),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(20))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chitwanhospital()));
                      },
                      child: Text(
                        'CHITWAN',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, top: 40, right: 40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(400, 50),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(20))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => kathmanduhospitals()));
                      },
                      child: Text(
                        'KATHMANDU',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, top: 40, right: 40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(400, 50),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(20))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => birjunghospital()));
                      },
                      child: Text(
                        'BIRJUNG',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, top: 40, right: 40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(400, 50),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(20))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => biratnagarhospital(),
                            ));
                      },
                      child: Text(
                        'BIRATNAGAR',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, top: 40, right: 40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(400, 50),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(20))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => nawalparasihospital()));
                      },
                      child: Text(
                        'NAWALPARASI',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.home)),
          ],
        ),
      ),
      appBar: AppBar(
        shadowColor: Colors.black,
        title: Text('SELECT LOCATION'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
      drawer: Mydrawer(),
    );
  }
}
