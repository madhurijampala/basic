import 'face.dart';
import 'package:flutter/material.dart';
import 'content.dart';


void main() {
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReportPage(),
    );
  }
}

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  String selectedOption = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(48, 46, 46, 1),
        centerTitle: true,
        title: const Text(
          "Report",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Report',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildRadioButton('Remove Fake Content'),
            _buildRadioButton("Why content Was Not Removed"),
            _buildRadioButton('Total Count of Reported Content'),
            _buildRadioButton('False Information'),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButton('Cancel', const Color.fromRGBO(246, 228, 70, 1), () {
                  // Navigate to MyApp7
                  _navigateToMyApp7();
                }),
                const SizedBox(width: 20),
                _buildButton('Report', const Color.fromRGBO(246, 228, 70, 1), () {
                  // Report button logic
                  // ignore: avoid_print
                  print('Reported: $selectedOption');
                  _navigateToMyApp4();
                }),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  void _navigateToMyApp4() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyApp4()),
    );
  }

  void _navigateToMyApp7() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyApp8()),
    );
  }

  Widget _buildRadioButton(String text) {
    return ListTile(
      title: Text(text),
      leading: Radio(
        value: text,
        groupValue: selectedOption,
        onChanged: (value) {
          setState(() {
            selectedOption = value.toString();
          });
        },
      ),
    );
  }

  Widget _buildButton(String text, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        primary: color,
        onPrimary: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Follow Up',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
