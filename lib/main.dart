import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              "EcoTracker",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            backgroundColor: Color.fromARGB(98, 149, 143, 143)),
        body: const Center(
          child: Image(
            image: AssetImage('images/Ecotracker_Logo.png'),
          ),
        ),
        backgroundColor: Color.fromARGB(51, 54, 54, 54),
      ),
    ),
  );
}
