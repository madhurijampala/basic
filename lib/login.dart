import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp2());
}

// ignore: use_key_in_widget_constructors
class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(48, 46, 46, 1),
        centerTitle: true,
        title: const Text(
          "Login page",
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
            // Google Sign In
            _buildSignInButton('Sign in with Google', FontAwesomeIcons.google, Color.fromRGBO(121, 161, 240, 1)),
            const SizedBox(height: 5,),

            // Facebook Sign In
            _buildSignInButton('Sign in with Facebook', FontAwesomeIcons.facebook, Colors.blue),
             const SizedBox(height: 2),

            // Instagram Sign In
            _buildSignInButton('Sign in with Instagram', FontAwesomeIcons.instagram, Colors.purple),
            const SizedBox(height: 2),

            // Twitter Sign In
            _buildSignInButton('Sign in with Twitter', FontAwesomeIcons.twitter, Colors.lightBlue),
                         const SizedBox(height: 2),

            // Email Sign In
            _buildSignInButton('Sign in with Email', Icons.mail, Colors.orange),
                         const SizedBox(height: 2),

            // Apple Sign In
            _buildSignInButton('Sign in with Apple', FontAwesomeIcons.apple, Colors.black),
            const SizedBox(height: 20,),
            // Bottom Navigation
            _buildBottomNavigation(),
          ],
        ),
      ),
    );
  }

  Widget _buildSignInButton(String text, IconData icon, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton.icon(
        onPressed: () {
          // Add your authentication logic here
        },
        icon: Icon(icon),
        label: Text(text),
        style: ElevatedButton.styleFrom(
          // ignore: deprecated_member_use
          primary: color,
          // ignore: deprecated_member_use
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
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
