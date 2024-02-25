

import 'package:flutter/material.dart';

class HostelCard extends StatelessWidget {
  const HostelCard({
    Key? key,
    required this.data,
    required this.onTap,
     required this.onFavoritePressed, 
  }) : super(key: key);
  final Map data;
  final Function() onTap;
  final Function() onFavoritePressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: data['color'] ?? Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      child: Column(
           children: [
            Stack(
            alignment: Alignment.topRight,
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                height: 280, 
                width: double.infinity,
                child: Image.asset(
                  "villa.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 24,
                ),
                ),
              ),
            ],
          ),
            
            // ignore: avoid_unnecessary_containers
            Container(
              child: Text(
                    data['text'] ?? "",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
            ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                 
                            
                 children: [
                   Text("Art Institute Of Hyderabad",
                   textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(127, 77, 153, 1)
                    ),),
                    SizedBox(width: 500),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                      ],
                    ),
                Text("Rating: 4.5"),
                
                 ],
                             ),
              ),
              const SizedBox(
                height: 20,
              ),
             const Row(
              
            children: [
              Icon(Icons.location_on, color: Color.fromRGBO(184, 219, 234, 1)),
              Text("Hyderabad"),
              SizedBox(width: 25),
              Icon(Icons.bed,color: Color.fromRGBO(162, 197, 225, 1)),
              Text("2 beds"),
              SizedBox(width: 25),
              Icon(Icons.bathtub,color: Color.fromRGBO(162, 197, 225, 1)),
              Text(" 2 baths"),
            ],
          ),
          const Divider(
            color: Color.fromRGBO(68, 55, 55, 0.234),
            thickness: 1,
          ),
          const SizedBox(height: 10,),
          const Row(
            
            children: [
              Icon(Icons.currency_rupee,color: Colors.black,),
              Text(" 850 ",
              style: TextStyle(
                color: Color(0xFFED4444),
                fontSize: 18,
              ),),
              SizedBox(width: 600,),
              Text("per night",
              style: TextStyle(
                fontSize: 15,
                color: Colors.blue,
              ),)
              
            ],

          ),
               
                  
            const SizedBox(height: 10,),
            
           
            
          ],
        ),
      ),
    );
  }
}
