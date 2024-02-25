import 'package:flutter/material.dart';


class Mypage1 extends StatefulWidget {
  const Mypage1({Key? key}) : super(key: key);

  @override
  State<Mypage1> createState() => _ScreenState();
}

class _ScreenState extends State<Mypage1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
        backgroundColor: Colors.black,
        
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Text(
                  "TRAINING ONE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.only(left: 200.0, right: 200.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: size.height * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 0.8),
                        child: Text(
                          "Today",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.run_circle_sharp,
                              size: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0),
                              child: Text(
                                "Running........................................",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w200),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 15.0)),
                            Text(
                              "15 min",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.sports_gymnastics,
                              size: 30.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0),
                              child: Text(
                                "Gym...............................................",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w200),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 15.0)),
                            Text(
                              "20*6",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.heart_broken,
                              size: 30.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0),
                              child: Text(
                                "Cardio...........................................",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w200),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 15.0)),
                            Text(
                              "30 min",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                            left: 200.0,
                          )),
                          Text(
                            "All Programs",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 25,
                                fontWeight: FontWeight.w200),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Icon(
                            Icons.arrow_downward_sharp,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                   
                    child: Container(
                      width: 310,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xFFF6FF5D),
                      ),
                      child: const Text(
                        "Statistics",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 70.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Container(
                    width: 310,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(201, 6, 92, 221),
                    ),
                    padding: const EdgeInsets.only(left: 10.0, top: 15.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.heart_broken_sharp,
                              size: 60.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              "97",
                              style: TextStyle(
                                  fontSize: 60.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                        Text(
                          "Heart rate",
                          style: TextStyle(
                              fontSize: 60.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                width: 648,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: TextField(
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                        decoration: InputDecoration(
                            hintText: "New Program",
                            suffixIcon: Icon(Icons.arrow_forward_ios)),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: TextField(
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                        decoration: InputDecoration(
                            hintText: "Training Zone",
                            suffixIcon: Icon(Icons.arrow_forward_ios)),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: TextField(
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                        decoration: InputDecoration(
                            hintText: "Settings",
                            suffixIcon: Icon(Icons.arrow_forward_ios)),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 20.0),
                      child: Row(
                        children: [
                          Text(
                            "My Account",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.person_2_rounded),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}