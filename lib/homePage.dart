import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentor_app/mentorPage.dart';
import 'package:mentor_app/parentPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0F2FE),
      
      body: 
          
          


          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
            children: [
          
          
              Text("Select a Role",
              style: TextStyle(fontSize: 24,color: Color(0xFF0F172A),
              fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
          
              GestureDetector(
                onTap: (){
                  Get.to(Parentpage(),transition: Transition.fadeIn);
                },
                child: Container(
                  height: 80,
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
                  
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Parent",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        Icon(Icons.family_restroom,size: 30,
                        color: Color(0xFF0284C7)
                        )
                      ],
                    ),
                  
                  
                ),
              ),
              SizedBox(height: 20,),
          
              GestureDetector(
                onTap: (){
                  Get.to(Mentorpage(),transition: Transition.fadeIn);
                },
                child: Container(
                  height: 80,
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
                  
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Mentor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        Icon(Icons.school,size: 30,
                        color: Color(0xFF0284C7),
                        ),
                      ],
                    ),
                  
                ),
              )
            ],),
          ),
        
      
    
    );
  }
}