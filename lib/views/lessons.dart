import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentor_app/views/student.dart';

class lessonPage extends StatefulWidget {
  const lessonPage({super.key});

  @override
  State<lessonPage> createState() => _ParentpageState();
}

class _ParentpageState extends State<lessonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0F2FE),
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
            children: [
          
          
              Text("List of Lessons 📚",
              style: TextStyle(fontSize: 24,color: Color(0xFF0F172A),
              fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Get.to(studentPage(),transition: Transition.fadeIn);
                },
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
                              Text("Mathematics",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              
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
                              Text("Physics",
                                                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                                      ),
                             
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
                              Text("English",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                                      ),
                              
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