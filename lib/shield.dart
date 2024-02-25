import 'package:basic/face.dart';
import 'package:basic/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp6());
}

class MyApp6 extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 4, right: 4),
              height: 265,
              width: 180,
              color: Colors.blue,
              child: Image.asset(
                'assets/shield2.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 0.5),
            Container(
              color: const Color.fromRGBO(137, 237, 253, 1),
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.only(left: 4, right: 4),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        '200k',
                        style: TextStyle(color: Colors.pink),
                      ),
                      Text(
                        'Total Posts',
                        style: TextStyle(color: Color.fromRGBO(28, 6, 13, 1)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '45',
                        style: TextStyle(color: Colors.pink),
                      ),
                      Text(
                        'Objections Raised',
                        style: TextStyle(color: Color.fromRGBO(5, 5, 5, 1)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '6',
                        style: TextStyle(color: Colors.pink),
                      ),
                      Text(
                        'Resolved',
                        style: TextStyle(color: Color.fromRGBO(7, 7, 7, 1)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            const Text(
              'Action Required',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Expanded(
              child: Container(
                color: const Color.fromRGBO(248, 249, 250, 1),
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Center(
                    
                      child: Image.asset(
                        'assets/prahari.jpeg',
                        fit: BoxFit.cover,
                        width: 140,
                        height: 120,
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 0.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    if (_pageController.page != 0) {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    if (_pageController.page != 5) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: const Icon(Icons.arrow_forward),
                ),
                const SizedBox(width: 16),
              ],
            ),
            const SizedBox(height: 5),
           Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle Yes button click
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp8()),
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
                        MaterialPageRoute(builder: (context) => MyApp7()),
                      );
                    },
                    child: const Text('No'),
                  ),
                ],
              ),
          ],
        ),
         
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Followup',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
