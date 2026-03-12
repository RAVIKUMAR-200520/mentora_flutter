import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Mentorstd extends StatefulWidget {
  const Mentorstd({super.key});

  @override
  State<Mentorstd> createState() => _MentorstdState();
}

class _MentorstdState extends State<Mentorstd> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.add),
            backgroundColor: Colors.green,),
        backgroundColor: Color(0xFFE0F2FE),
       appBar: AppBar(backgroundColor: Color.fromARGB(255, 79, 165, 222),
       title: Text("Student Record",style: TextStyle(fontWeight: FontWeight.bold),),),
       body: SingleChildScrollView(
         child: Column(
          children: [
            newMethod("Student 1","Roll no","B+ve","1234567890","Address Details"),
            //SizedBox(height: 10,),
            newMethod("Student 2","Roll no","O+ve","1234567890","Address Details"),
            //SizedBox(height: 10,),
            newMethod("Student 3","Roll no","O+ve","1234567890","Address Details"),
            //SizedBox(height: 10,),
            newMethod("Student 4","Roll no","A+ve","1234567890","Address Details"),
            //SizedBox(height: 10,),
             newMethod("Student 5","Roll no","B+ve","1234567890","Address Details"),
            //SizedBox(height: 10,),
             newMethod("Student 6","Roll no","B-ve","1234567890","Address Details"),
            //SizedBox(height: 10,),
             newMethod("Student 7","Roll no","A+ve","1234567890","Address Details"),
            //SizedBox(height: 10,),
             newMethod("Student 8","Roll no","O+ve","1234567890","Address Details"),
            //SizedBox(height: 10,),
             newMethod("Student 9","Roll no","B+ve","1234567890","Address Details"),
            //SizedBox(height: 10,),
             newMethod("Student 10","Roll no","A+ve","1234567890","Address Details"),
            //SizedBox(height: 10,),
          ],
         ),
       ),
        
      
    );
  }

  ExpansionTile newMethod(name,reg_no,b_type,ph,address) {
    return 
    ExpansionTile(
        backgroundColor: Colors.white,
          leading: CircleAvatar(
            ),
          title: Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text(reg_no),
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(Icons.bloodtype,color: Colors.red,size: 25,),
                  SizedBox(width: 10,),
                  Text(b_type,style: TextStyle(fontSize: 25),),
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(Icons.phone,color: Colors.blue,size: 25,),
                  SizedBox(width: 10,),
                  Text(ph,style: TextStyle(fontSize: 25),),
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(Icons.home,color: Colors.blue,size: 25,),
                  SizedBox(width: 10,),
                  Text(address,style: TextStyle(fontSize: 25),),
                  
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ButtonBar(children: [
                    TextButton(onPressed: (){}, 
                    child: Column(
                      children: [
                        Icon(Icons.schedule),
                        SizedBox(height: 5,),
                        Text("Exam Details")
                      ],
                    )),
                    SizedBox(width: 5,),
                    TextButton(onPressed: (){}, 
                    child: Column(
                      children: [
                        Icon(Icons.book),
                        SizedBox(height: 5,),
                        Text("Attendance Details")
                      ],
                    )),
                    SizedBox(width: 5,),
                    TextButton(onPressed: (){}, 
                    child: Column(
                      children: [
                        Icon(Icons.money),
                        SizedBox(height: 5,),
                        Text("Fee Details")
                      ],
                    ))
                  ],),
                ],
              ),
            )
         
          ],
          );
  }
}
