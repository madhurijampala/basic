import 'package:flutter/material.dart';
import'shield.dart';
import'reporting.dart';
void main() {
  runApp(MyApp8());
}

class MyApp8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(74, 55, 219, 1),
        centerTitle: true,
        title: const Text(
          "Fake Detected",
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 13, 13, 13),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Image.asset(
              'assets/prahari.jpeg',
              width: 320,
              height: 420,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.comment,
                      color: Color.fromARGB(255, 99, 82, 82),
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Comment',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.report,
                      color: Color.fromARGB(255, 209, 109, 119),
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Report',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
                          MaterialPageRoute(builder: (context) => MyApp3()),
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
                          MaterialPageRoute(builder: (context) => MyApp6()),
                        );
                      },
                      child: const Text('No'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}



