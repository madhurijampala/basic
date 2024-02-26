import 'package:basic/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp10());
}

class MyApp10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue, 
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp11()),
                  );
                },
                child: const CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage('assets/first.jpeg'),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Prahari App',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Font2', 
                  ),
              ),
              const SizedBox(
                height: 2,
              ),
              
              const SizedBox(height: 20),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
