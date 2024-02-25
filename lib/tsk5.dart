

import 'package:flutter/material.dart';

class Myformpage extends StatefulWidget {
  const Myformpage({Key? key}) : super(key: key);

  @override
  State<Myformpage> createState() => _MyformpageState();
}

class _MyformpageState extends State<Myformpage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
   int selectedRadio = 0;
  String selectedCountry = 'USA';
  bool switchValue = false;

  


  void handleRadioValueChanged(int? value) {
  setState(() {
    selectedRadio = value ?? 0; 
  });
  
}


  @override
  Widget build(BuildContext context) {
     List<String> countryOptions = ['India','USA', 'Canada', 'UK', 'Other'];
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration form"),
        backgroundColor: const Color.fromRGBO(147, 203, 249, 1),
      ),
      body:SingleChildScrollView(
      
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Name",
                  hintText: "Enter your name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your Email address",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Phone number",
                  hintText: "Enter your Phone number",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Confirmation of password",
                  hintText: "Enter your confirmation password",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your confirmation password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 25),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Date of Birth",
                  hintText: "Enter your Date of birth",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 25),
              const Text("Gender"),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: selectedRadio,
                    onChanged: handleRadioValueChanged,
                  ),
                  const SizedBox(width: 10),
                  const Text("Male"),
                  Radio(
                    value: 2,
                    groupValue: selectedRadio,
                    onChanged: handleRadioValueChanged,
                  ),
                  const SizedBox(width: 10),
                  const Text("Female"),
                  Radio(
                    value: 3,
                    groupValue: selectedRadio,
                    onChanged: handleRadioValueChanged,
                  ),
                  const SizedBox(width: 10),
                  const Text("Other"),
                ],
              ),const Text("Country"),
              DropdownButton<String>(
                value: selectedCountry,
                onChanged: (String? value) {
                  setState(() {
                    selectedCountry = value!;
                  });
                },
                items: countryOptions.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),

              Row(
                children: [
                  const Text("Notification"),
                  const Spacer(),
                  const Text("on/off"),
                  Switch(
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                  ),
                ],
              ),

              

              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  // Add your code here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 73, 205, 234),
                  textStyle: const TextStyle(fontSize: 18),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                ),
                child: const Text("submit"),
              ),
            ],
          ),
        ),
      
    ),);
  }
}

void main() {
  runApp(const MaterialApp(
    home: Myformpage(),
  ));
}
