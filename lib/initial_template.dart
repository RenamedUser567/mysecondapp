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
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Electricity'),
    Text('Water'),
    Text('Usage'),
    Text('Settings'),
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
              'images/Ecotracker_Logo.png', // Updated to match your folder structure
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
        backgroundColor: Colors.black, // Set appBar background color to black
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
                Icons.home), // No color here, default to unselectedItemColor
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
