import 'package:flutter/material.dart';

class MyPage3 extends StatelessWidget {
  const MyPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: (){

            },
          ),
         actions: [
            IconButton(
              icon: const Icon(Icons.search), 
              onPressed: () {
                
              },
            ),
          ],
          title: const Text('Appointments'),
          centerTitle: true, 
          
        ),
        
          
        body: SingleChildScrollView(
          
           
            child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(width: 0.8),
                    ),
                    hintText: "search",
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30.0,
                      
                      ),
                      suffixIcon: IconButton(icon: const Icon(Icons.clear),
                      onPressed:(){},
                      ),
                    ),
                ),
              ),
               
              const SizedBox(height: 5),
                
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color.fromRGBO(161, 217, 248, 1),
              ),
                  child: const Column(
                    children: <Widget>[
    
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                          "Design Meeting",
                            style: TextStyle(
                              color: Color(0xFF0A5041),
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                            
                          ),
                          Text(" Today",
                          style: TextStyle(
                              color: Color(0xFF0A5041),
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      
                      SizedBox(height:5.0),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                      child:
                       Text(
                        "10.00 - 11.30",
                        style:TextStyle(
                          color: Color.fromRGBO(9, 96, 65, 1),
                          fontSize: 25.0,
                        ),
                        
                       ),
                      ),
                       
                     
                       
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            
                            children:<Widget> [
                              
                              Icon(Icons.face,color:Colors.brown),
                              SizedBox(width: 10,),
                              Icon(Icons.face_2,color:Colors.brown),
                              SizedBox(width: 10,),
                              Icon(Icons.face_3_sharp,color:Colors.brown)
                              
                            
                        ],
                      ),
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                        Icon(Icons.call ,color:Colors.blue,),
                          SizedBox(width: 10.0,),
                          Icon(Icons.videocam, color:Colors.blue),
                          SizedBox(width: 10.0,),
                          Icon(Icons.attach_email,color:Colors.blue),
                        ],
                      ),
                      ],
                          ),

                      
                    ],
                  ),
                ),
                const SizedBox(height:5),
                Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color(0xFFF5BCC7),
              ),
                  child: const Column(
                    children: <Widget>[
    
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                          "Development Meeting",
                            style: TextStyle(
                              color: Color(0xFF0A5041),
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                            
                          ),
                          Text("Tomorrow",
                          style: TextStyle(
                              color: Color(0xFF0A5041),
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      
                      SizedBox(height:10.0),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                      child:
                       Text(
                        "10.00 - 11.30",
                        style:TextStyle(
                          color: Color.fromRGBO(9, 96, 65, 1),
                          fontSize: 25.0,
                        ),
                        
                       ),
                      ),
                       
                     
                       
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            
                            children:<Widget> [
                              
                              Icon(Icons.face,color:Colors.brown),
                              SizedBox(width: 10,),
                              Icon(Icons.face_2,color:Colors.brown),
                              SizedBox(width: 10,),
                              Icon(Icons.face_3_sharp,color:Colors.brown)
                              
                            
                        ],
                      ),
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                        Icon(Icons.call ,color:Colors.blue,),
                          SizedBox(width: 10.0,),
                          Icon(Icons.videocam, color:Colors.blue),
                          SizedBox(width: 10.0,),
                          Icon(Icons.attach_email,color:Colors.blue),
                        ],
                      ),
                      ],
                          ),

                      
                    ],
                  ),
                ),
                const SizedBox(height:5),
                Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color.fromRGBO(167, 181, 244, 1),
              ),
                  child: const Column(
                    children: <Widget>[
    
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                          "Development Meeting",
                            style: TextStyle(
                              color: Color(0xFF0A5041),
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                            
                          ),
                          Text("Tommorrow",
                          style: TextStyle(
                              color: Color(0xFF0A5041),
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      
                      SizedBox(height:10.0),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                      child:
                       Text(
                        "10.00 - 11.30",
                        style:TextStyle(
                          color: Color.fromRGBO(9, 96, 65, 1),
                          fontSize: 25.0,
                        ),
                        
                       ),
                      ),
                       
                     
                       
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            
                            children:<Widget> [
                              
                              Icon(Icons.face,color:Colors.brown),
                              SizedBox(width: 10,),
                              Icon(Icons.face_2,color:Colors.brown),
                              SizedBox(width: 10,),
                              Icon(Icons.face_3_sharp,color:Colors.brown)
                              
                            
                        ],
                      ),
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                        Icon(Icons.call ,color:Colors.blue,),
                          SizedBox(width: 10.0,),
                          Icon(Icons.videocam, color:Colors.blue),
                          SizedBox(width: 10.0,),
                          Icon(Icons.attach_email,color:Colors.blue),
                        ],
                      ),
                      ],
                          ),

                      
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                 Container(
                width: 1000,
            
                decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
                width: 2.0,
                style: BorderStyle.solid, 
               
              ),
                  borderRadius: BorderRadius.circular(8.0),
                  shape: BoxShape.rectangle,
                  
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.add,
                      size: 30.0,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "Add New Task",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            
                
               
            ]
           
         
        ),
      ),
    ),);
  }
}