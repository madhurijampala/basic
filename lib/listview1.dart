import 'package:flutter/material.dart';

import 'listview.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({super.key});

  @override
  State<HotelPage> createState() => HotelPageState();
}

class HotelPageState extends State<HotelPage> {
  List? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 64, 97, 228),
        centerTitle: true,
        title: const Text(
          "Indian Hotels",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            
             Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
               child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor:  const Color.fromARGB(255, 73, 205, 234), 
            textStyle:  const TextStyle(fontSize: 18), 
            padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             
          ),
          child:  const Text("Villa"),
        ),
         ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor:  const Color.fromARGB(255, 73, 205, 234), 
            textStyle:  const TextStyle(fontSize: 18), 
            padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
          ),
          child:  const Text("Luxary Hotels"),
        ),
             ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor:  const Color.fromARGB(255, 73, 205, 234), 
            textStyle:  const TextStyle(fontSize: 18), 
            padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
          ),
          child:  const Text("Tiny Houses"),

        ),       
         ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor:  const Color.fromARGB(255, 73, 205, 234), 
            textStyle:  const TextStyle(fontSize: 18), 
            padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
          ),
          child:  const Text("Hostels"),
        ),      
         ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor:  const Color.fromARGB(255, 73, 205, 234), 
            textStyle:  const TextStyle(fontSize: 18), 
            padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
          ),
          child:  const Text("Home stays"),
        ),      
                         
                         
                       ],
                           ),
            
             ),
              
            Expanded(
              child: ListView.builder(
                itemCount: hotelMenu.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return HostelCard(
                    data: hotelMenu[index],
                    onTap: () {},
                    onFavoritePressed: () {
    
             
  },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List hotelMenu = [
  {
    "text": "",
    "icon":"icon.favourite",
  },
  {
    "text": "",
    "icon":"icon.favourite",
  },
  {
    "text": "",
    "icon":"icon.favourite",
  },{
    "text": "",
    "icon":"icon.favourite",
  },{
    "text": "",
    "icon":"icon.favourite",
  },
  
];
 


