import 'package:basic/app.dart';
import 'package:basic/shield.dart';
import 'package:basic/signin.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp11());

class MyApp11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void navigateToForgotPassword() {
    // Add the logic to handle the "Forgot Password" action here
    print('Forgot Password clicked');
    // You can add navigation or other actions as needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate to MyApp3 when the back arrow is pressed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp10()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: navigateToForgotPassword,
                child: const SizedBox(
                  height: 20,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue, // You can change the color as needed
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(43, 151, 212, 1), // Background color
                  onPrimary: Colors.white, // Text color
                ),
                onPressed: () {
                  // Navigate to MyApp6 when Login button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp6()),
                  );
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Navigate to MyApp7 when Signup text is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp7()),
                  );
                },
                child: const Text(
                  'Do not have an account? Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
