import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Parentpage extends StatefulWidget {
  const Parentpage({super.key});

  @override
  State<Parentpage> createState() => _ParentpageState();
}

class _ParentpageState extends State<Parentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0F2FE),
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
            children: [
          
          
              Text("Welcome Parent 👋",
              style: TextStyle(fontSize: 24,color: Color(0xFF0F172A),
              fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10,
                        spreadRadius: 5,
                      )
                    ]
                    
                  ),
                  child: 
                     
                        Center(
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Student",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              SizedBox(width: 10,),
                              Icon(Icons.person,size: 25,
                              color:Color(0xFF0284C7) ,)
                            ],
                          )),
              
              )
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10,
                        spreadRadius: 5,
                      )
                    ]
                    
                  ),
                  child: 
                     
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Lessons",
                                                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                                      ),
                             SizedBox(width: 10,),
                              Icon(Icons.book,size: 25,
                              color:Color(0xFF0284C7) ,)
                            ],
                          )
                        ),
                        )
                        ),
                        SizedBox(height: 10,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10,
                        spreadRadius: 5,
                      )
                    ]
                    
                  ),
                  child: 
                     
                        Center(
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Sessions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                                      ),
                              SizedBox(width: 10,),
                              Icon(Icons.timelapse,size: 25,
                              color:Color(0xFF0284C7) ,)
                            ],
                          )
                        ),
                        )
                        )
   ])
   ) 
   );

  }
}