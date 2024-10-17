import 'package:flutter/material.dart';

void main() {
  runApp(EcoTrackerApp());
}

class EcoTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoTracker',
      home: EcoTrackerHome(),
    );
  }
}

class EcoTrackerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 25, 25),
      body: Column(
        children: [
          // Spacer to push content down
          Spacer(flex: 3),

          // Electrical Devices Button
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print('Electrical Devices Button Pressed');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 255, 217, 80), // Button color
                  padding: EdgeInsets.symmetric(vertical: 20), // Button height
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.electric_bolt,
                        color: Color.fromARGB(255, 250, 165, 0), size: 30),
                    SizedBox(width: 10),
                    Text(
                      'Electrical Devices',
                      style: TextStyle(
                          color: Color.fromARGB(255, 240, 244, 248),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Water Utilities Button
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print('Water Utilities Button Pressed');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 0, 119, 182), // Button color
                  padding:
                      const EdgeInsets.symmetric(vertical: 20), // Button height
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.water_drop,
                        color: Color.fromARGB(255, 33, 220, 253), size: 30),
                    SizedBox(width: 10),
                    Text(
                      'Water Utilities',
                      style: TextStyle(
                          color: Color.fromARGB(255, 240, 244, 248),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Spacer to push buttons higher
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
