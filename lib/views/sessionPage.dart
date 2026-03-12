import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sessionpage extends StatefulWidget {
  const Sessionpage({super.key});

  @override
  State<Sessionpage> createState() => _SessionpageState();
}

class _SessionpageState extends State<Sessionpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0F2FE),
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
            children: [
          
          
              Text("Sessions Details ⏰",
              style: TextStyle(fontSize: 24,color: Color(0xFF0F172A),
              fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 200,
                  width: 350,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
            color: Color(0xFFFFFFFF),),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Topic: Algebra Basics",style: TextStyle(fontSize: 24,color: Color(0xFF0F172A),
                                  fontWeight: FontWeight.bold),)
                      ],
                    ),
                    
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Date: March 15",style: TextStyle(fontSize: 24,color: Color(0xFF0F172A),
                                    fontWeight: FontWeight.bold),)
                        ],
                      ),
                      
                    ),
                  ),
              
                ],
              ),
            ),
                ),
              )
              ])
              )
    );
  }
}