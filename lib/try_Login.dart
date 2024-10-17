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
        body: const LoginPage(),
        backgroundColor: Color.fromARGB(51, 54, 54, 54),
      ),
    ),
  );
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('images/Ecotracker_Logo.png'),
            width: 200, // Reduced image width
            height: 200, // Reduced image height
          ),
          const SizedBox(
              height: 10), // Reduced space between logo and input fields
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          const SizedBox(height: 15), // Reduced space between input fields
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: TextField(
              obscureText: true, // Hides the text for password
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          const SizedBox(
              height: 15), // Reduced space between password field and button
          ElevatedButton(
            onPressed: () {
              // Handle login logic here
              print('Login button pressed');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Color.fromARGB(98, 149, 143, 143), // Button color
            ),
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
