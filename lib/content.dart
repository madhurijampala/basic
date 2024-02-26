import 'package:flutter/material.dart';

import 'reporting.dart';
import'contentfnd.dart';

void main() {
  runApp(MyApp4());
}

// ignore: use_key_in_widget_constructors
class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/content.jpeg'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Content found in this Account.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 2,
              ),
              const Text(
                'Do you want to remove this image ?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle Yes button click
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp5()),
                      );
                    },
                    child: const Text(
                      'Yes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Handle No button click
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp3()),
                      );
                    },
                    child: const Text('No'),
                  ),
                ],
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}


