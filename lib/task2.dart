 import 'package:flutter/material.dart';

class MyPage2 extends StatelessWidget {
  const MyPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 227, 87),
      body:
      // ignore: prefer_const_constructors
      SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 30, 0, 0),
                child: Icon(Icons.north_west, color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 15, 0),
                child: Text(
                  "Go back",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
            child: Container(
              height: 1,
              width: 1500,
              color: Colors.black,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 15, right: 15),
            child: Center(
                child: Text("Statistics",
                    style: TextStyle(
                        fontSize: 68,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button logic here
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.black,
                      minimumSize: const Size(60, 80),
                    ),
                    child: const Text(
                      "DAY",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button logic here
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.grey, backgroundColor: Colors.grey,
                      minimumSize: const Size(60, 80),
                    ),
                    child: const Text(
                      "WEEK",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button logic here
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.grey, backgroundColor: Colors.grey,
                      minimumSize: const Size(60, 80),
                    ),
                    child: const Text(
                      "MONTH",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5,horizontal:5 ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.black,
                  size: 50,
                ),
                Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.black,
                  size: 50,
                ),
                Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.black,
                  size: 50,
                ),
                Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.black,
                  size: 50,
                ),
                Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.black,
                  size: 50,
                ),
                Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.black,
                  size: 50,
                ),
                Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.black,
                  size: 50,
                ),
                 Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.black,
                  size: 50,
                ),
                 Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.black,
                  size: 50,
                ),
                Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.black,
                  size: 50,
                ),
                Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.black,
                  size: 50,
                ),

              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 14),
                child: Text(
                  "17,493",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 14),
                child: Icon(
                  Icons.directions_walk_outlined,
                  size: 50,
                  color: Colors.black,
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Steps",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
            child: Container(
              height: 1,
              width: 1500,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 14),
                child: Text(
                  "3.5 hr",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 14),
                child: Icon(
                  Icons.watch_later_outlined,
                  size: 50,
                  color: Colors.black,
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Activity",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
            child: Container(
              height: 1,
              width: 1500,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 14),
                child: Text(
                  "493 Kcal",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 14),
                child: Icon(
                  Icons.local_fire_department_outlined,
                  size: 50,
                  color: Colors.black,
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Was Burned",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          // ignore: avoid_unnecessary_containers
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color:const Color.fromARGB(255, 220, 227, 87),
                      border: Border.all(
                  color: Colors.black,
                  width: 1.2, 
                ),
                      
                      
                    ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.bar_chart_rounded,
                    color: Colors.black,
                    size: 50,
                  ),
                  SizedBox(width:15),
                  Text("How to tranning effective",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  
                  )
                  
                ],
              
              ),
            ),
          )
        ],
      ),
    ),);
  }
}
