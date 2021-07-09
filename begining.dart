import 'dart:html';

import 'package:flutter/material.dart';
import 'package:i_want_to_show_picture/pages/Loginpage.dart';

class initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Text(
                'Hamro Sewa',
                style: TextStyle(
                    fontFamily: "Signatra", fontSize: 80, color: Colors.white),
              ),
              Text(
                'We provide Latest update on medical Facilities',
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: FloatingActionButton(
                  backgroundColor: Colors.purpleAccent,
                  splashColor: Colors.purpleAccent,
                  elevation: 20,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginpage()));
                  },
                  child: Icon(Icons.arrow_forward),
                ),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue.withOpacity(0.8), Colors.purpleAccent])),
        alignment: Alignment.center,
      ),
    );
  }
}
