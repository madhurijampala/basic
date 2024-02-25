import 'package:flutter/material.dart';

void main() {
  runApp(MyApp5());
}

// ignore: use_key_in_widget_constructors
class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
       
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                
                backgroundColor: Colors.green, // You can customize the color
                child: Icon(
                  Icons.check_circle,
                  size: 70,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Content removed',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
