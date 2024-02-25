import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  // final _formKey = GlobalKey<FormState>();

  bool _securetext = true;
  bool switchvalue = false;
  bool check = false;

  late String selectDob;

  int selecteditem = 0;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        selectDob = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Account",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Form(
            // key: _formKey,
            child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 5),
                child: Text(
                  "Full Name",
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.5), fontSize: 14),
                ),
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'John Doe',
                  hintStyle: TextStyle(
                    color: Colors.blue.withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 5),
                child: Text(
                  "Email",
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.5), fontSize: 14),
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'johndoe@mail.com',
                  hintStyle: TextStyle(
                    color: Colors.blue.withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 5),
                child: Text(
                  "Mobile Number",
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.5), fontSize: 14),
                ),
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: '987654321',
                  hintStyle: TextStyle(
                    color: Colors.blue.withOpacity(0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 5),
                child: Text(
                  "Password",
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.5), fontSize: 14),
                ),
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Enter your Password',
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _securetext ? Icons.visibility : Icons.visibility_off,
                        color: Colors.blue.withOpacity(0.5),
                      ),
                      onPressed: () {
                        setState(() {
                          _securetext = !_securetext;
                        });
                      },
                    )),
                obscureText: _securetext,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 5),
                child: Text(
                  "Conform Password",
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.5), fontSize: 14),
                ),
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Enter your Password',
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _securetext ? Icons.visibility : Icons.visibility_off,
                        color: Colors.blue.withOpacity(0.5),
                      ),
                      onPressed: () {
                        setState(() {
                          _securetext = !_securetext;
                        });
                      },
                    )),
                obscureText: _securetext,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 5),
                child: Text(
                  "Date of Birth",
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.5), fontSize: 14),
                ),
              ),
              TextField(
                keyboardType: TextInputType.datetime,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: '01/03/2000',
                  hintStyle: TextStyle(
                    color: Colors.blue.withOpacity(0.5),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        _selectDate(context);
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.blue.withOpacity(0.5),
                        size: 28,
                      )),
                ),
              
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 5),
                child: Text(
                  "Gender",
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RadioListTile(
                      value: 0,
                      groupValue: selecteditem,
                      title: Text(
                        "Male",
                        style: TextStyle(color: Colors.blue.withOpacity(0.5)),
                      ),
                      onChanged: (val) {
                        print("selected$val");
                        setState(() {
                          selecteditem = val as int;
                        });
                      }),
                  RadioListTile(
                      value: 1,
                      groupValue: selecteditem,
                      title: Text("Female",
                          style:
                              TextStyle(color: Colors.blue.withOpacity(0.5))),
                      onChanged: (val) {
                        print("selected$val");
                        setState(() {
                          selecteditem = val as int;
                        });
                      }),
                  RadioListTile(
                      value: 2,
                      groupValue: selecteditem,
                      title: Text("Prefer Not to Say",
                          style:
                              TextStyle(color: Colors.blue.withOpacity(0.5))),
                      onChanged: (val) {
                        print("Selected$val");
                        setState(() {
                          selecteditem = val as int;
                        });
                      }),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 5),
                child: Text(
                  "Country/Region",
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.5), fontSize: 14),
                ),
              ),
              TextField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Telangana',
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.blue.withOpacity(0.5),
                      size: 28,
                    )),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 8,bottom: 5),
              // child: Text(
              //   "Country/Region",
              //   style: TextStyle(
              //       color: Colors.blue.withOpacity(0.5), fontSize: 14),
              // ),
              // ),
              const SizedBox(
                height: 18,
              ),
              TextField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'SMS Alerts',
                    hintStyle: TextStyle(
                      color: Colors.blue.withOpacity(0.5),
                    ),
                    suffixIcon: CupertinoSwitch(
                      value: switchvalue,
                      onChanged: (value) {
                        switchvalue = value;
                        setState(() {
                          switchvalue = value;
                        });
                      },
                      trackColor: Colors.blue.withOpacity(0.5),
                      activeColor: Colors.blue,
                    )),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: CheckboxListTile(
                  value: check,
                  onChanged: (value) {
                    setState(() {
                      check = value as bool;
                    });
                  },
                  title: Text(
                    "I agree to the terms and conditions of the app.",
                    style: TextStyle(color: Colors.blue.withOpacity(0.5)),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      fixedSize: Size(MediaQuery.of(context).size.width, 50)),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}