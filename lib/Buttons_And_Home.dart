import 'package:flutter/material.dart';

void main() {
  runApp(EcoTrackerApp());
}

class EcoTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // Adjust theme to match the dark layout
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeButtons(),
    const Text('Electricity'),
    const Text('Water'),
    const Text('Usage'),
    const Text('Settings'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'images/Ecotracker_Logo.png',
              height: 30,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              // Add info action
            },
          ),
        ],
        backgroundColor: const Color.fromARGB(
            255, 0, 0, 0), // appBar background color (black)
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on),
            label: 'Electricity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.water_drop),
            label: 'Water',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Usage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green, // Selected icon color (green)
        unselectedItemColor:
            Colors.white, // Unselected icons (including Home) color (white)
        backgroundColor: Colors.black, // Background color for the navbar
        onTap: _onItemTapped,
      ),
    );
  }
}

// Create a new widget for the buttons
class HomeButtons extends StatefulWidget {
  @override
  _HomeButtonsState createState() => _HomeButtonsState();
}

class _HomeButtonsState extends State<HomeButtons> {
  double _electricalButtonScale = 1.0;
  double _waterButtonScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 300), //TOO ADJUST THE POSITION OF THE BUTTONS
        GestureDetector(
          onTapDown: (_) {
            setState(() {
              _electricalButtonScale = 0.95;
            });
          },
          onTapUp: (_) {
            setState(() {
              _electricalButtonScale = 1.0;
            });
            print('Electrical Devices Button Pressed');
          },
          onTapCancel: () {
            setState(() {
              _electricalButtonScale = 1.0;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            transform: Matrix4.identity()..scale(_electricalButtonScale),
            curve: Curves.easeInOut,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {}, //keep it empty for now:)
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 255, 217, 80), // Button color
                    padding:
                        EdgeInsets.symmetric(vertical: 16), // Button height
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.electric_bolt,
                        color: Color.fromARGB(255, 250, 165, 0),
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Electrical Devices',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 240, 244, 248),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20), // Space between buttons
        GestureDetector(
          onTapDown: (_) {
            setState(() {
              _waterButtonScale = 0.95;
            });
          },
          onTapUp: (_) {
            setState(() {
              _waterButtonScale = 1.0;
            });
            print('Water Utilities Button Pressed');
          },
          onTapCancel: () {
            setState(() {
              _waterButtonScale = 1.0;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            transform: Matrix4.identity()..scale(_waterButtonScale),
            curve: Curves.easeInOut,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {}, //keep it empty for now:)

                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 0, 119, 182), // Button color
                    padding:
                        EdgeInsets.symmetric(vertical: 16), // Button height
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.water_drop,
                        color: Color.fromARGB(255, 33, 220, 253),
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Water Utilities',
                        style: TextStyle(
                          color: Color.fromARGB(255, 240, 244, 248),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
