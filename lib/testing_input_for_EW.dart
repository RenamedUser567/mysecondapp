import 'package:flutter/material.dart';

void main() => runApp(EcoTrackerApp());

class EcoTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // Dark theme for the app
      home: WaterInputScreen(),
    );
  }
}

class WaterInputScreen extends StatefulWidget {
  @override
  _WaterInputScreenState createState() => _WaterInputScreenState();
}

class _WaterInputScreenState extends State<WaterInputScreen> {
  final TextEditingController showerController = TextEditingController();
  final TextEditingController showerAmountController = TextEditingController();
  final TextEditingController flushController = TextEditingController();
  final TextEditingController flushAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Container for Shower input
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 0, 116, 252), // Background color
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.shower, size: 60, color: Colors.white),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Placeholder for total showers
                        TextField(
                          controller: showerController,
                          decoration: InputDecoration(
                            hintText: 'Total showers today',
                            hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 95, 110, 127)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 191, 220, 254),
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.edit_note,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 95, 110, 127)),
                        ),
                        // Placeholder for water usage in gallons/liters
                        SizedBox(
                          width: 125,
                          child: TextField(
                            controller: showerAmountController,
                            decoration: InputDecoration(
                              hintText: '7.2 Gal/L', // Placeholder
                              hintStyle: TextStyle(
                                  color: const Color.fromARGB(179, 0, 0, 0),
                                  fontStyle: FontStyle.italic),
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.edit_note,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 10.0),
                            ),
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Space between containers

            // Container for Toilet input
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 116, 252), // Background color
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.wc, size: 55, color: Colors.white),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Placeholder for total flushes
                        TextField(
                          controller: flushController,
                          decoration: InputDecoration(
                            hintText: 'Total flushes today',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 95, 110, 127)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 191, 220, 254),
                            suffixIcon: Icon(
                              Icons.edit_note,
                              color: Colors.white,
                            ),
                          ),
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 95, 110, 127)),
                        ),
                        // Placeholder for water usage in gallons/liters
                        SizedBox(
                          width: 125,
                          child: TextField(
                            controller: flushAmountController,
                            decoration: InputDecoration(
                              hintText: '1.28 Gal/L', // Placeholder
                              hintStyle: TextStyle(
                                  color: const Color.fromARGB(179, 0, 0, 0),
                                  fontStyle: FontStyle.italic),
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.edit_note,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 10.0),
                            ),
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Space between containers

            // Add new input button (+)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color.fromARGB(255, 0, 116, 252), // Background color
                minimumSize: Size(double.infinity, 100), // Button size
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                // Handle adding new input
              },
              child: Icon(Icons.add, size: 100, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
