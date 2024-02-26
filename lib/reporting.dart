import 'face.dart';
import 'package:flutter/material.dart';
import 'content.dart';


void main() {
  runApp(MyApp3());
}

// ignore: use_key_in_widget_constructors
class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReportPage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
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
        backgroundColor: const Color.fromRGBO(43,151,212,1),
        
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
            _buildRadioButton("Why not removed"),
            _buildRadioButton('Scam or Fraud'),
            _buildRadioButton('False Information'),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButton('Cancel', const Color.fromRGBO(43,151,212,1), () {
                
                  _navigateToMyApp7();
                }),
                const SizedBox(width: 20),
                _buildButton('Report', const Color.fromRGBO(43,151,212,1), () {
                  // ignore: avoid_print
                  print('Reported: $selectedOption');
                  _navigateToMyApp4();
                }),
              ],
            ),
          ],
        ),
      ),
      
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
      MaterialPageRoute(builder: (context) => const MyApp8()),
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
      // ignore: sort_child_properties_last
      child: Text(text),
      style: ElevatedButton.styleFrom(
        // ignore: deprecated_member_use
        primary: color,
        // ignore: deprecated_member_use
        onPrimary: const Color(0xFFEAEEF1),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  
}
