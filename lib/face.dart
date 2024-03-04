import 'package:basic/reporting.dart';
import 'package:basic/shield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp8());
}

class MyApp8 extends StatelessWidget {
  const MyApp8({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(43, 151, 212, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Fake Detected', 
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child:
            Image.asset(
              'assets/prahari.jpeg',
              width: 320,
              height: 420,
              fit: BoxFit.cover,
            ),
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
