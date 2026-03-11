import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mentor_app/homePage.dart';
import 'package:mentor_app/loginPage.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override

  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  

  Future<void>signup()async{
    final email=emailController.text;
    final pass=passwordController.text;
   
   final res=await http.post(Uri.parse("https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCpf5bv-I9UfekbsJ-hcmESjKeDWTlNfFk"),
   body: jsonEncode({
    'email': email,
    'password': pass,
    'returnSecureToken':true,


   }));
   final result=jsonDecode(res.body);
   print(res.statusCode);
   if(res.statusCode==200){
    Get.snackbar("Completed", "Account created successfully",
    icon: Icon(Icons.done,color:Colors.green,size: 10 ,),
    );
    await Future.delayed(Duration(seconds: 2));
    Get.off(Homepage());
   }
   else{
    Get.snackbar("Error", "Invalid Sign Up Details",colorText: Colors.black,
    icon: Icon(Icons.warning,color: const Color.fromARGB(255, 37, 77, 147),),
    duration: Duration(seconds: 3));
   }
  
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0F2FE),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: Color(0xFFFFFFFF),),
              
              //color: Color(0xFFFFFFFF),
              height: 300,
              width: 350,
              child: Column(
                children: [
                  
                  Container(
                    height: 40,
                    width: 40,
                    child: Image.asset("assets/assets/login.png",fit: BoxFit.cover,),
                  ),
            
                  Text("Sign Up",
                  style: TextStyle(color: const Color.fromARGB(255, 37, 77, 147),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: emailController,
                      decoration: 
                      InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                          hintText: "Email address",
                          labelText: "Enter your email",
                          prefixIcon: Icon(Icons.mail,color: const Color.fromARGB(255, 37, 77, 147),),
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 8
                          )
                          
                          ),
                          
                          
                          
                    ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: passwordController,
                      decoration: 
                      InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        hintText: "Password",
                        labelText: "Enter your password",
                        prefixIcon: Icon(Icons.password,color: const Color.fromARGB(255, 37, 77, 147),),
            
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 8,
                          
                        )
                        ),
                        
                    ),
                    
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0284C7),
                      
            
                    ),
                    onPressed: signup, 
                    child:Text("Sign Up",style: 
                    TextStyle(color: Colors.white),)),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? ",
                        style: TextStyle(
                          color: Colors.black
                        ),),
                        GestureDetector(
                          onTap: () {
                            Get.to(Loginpage());
                            
                          },
                          child: Text("Login",
                          style: TextStyle(
                            color: Color(0xFF0284C7),
                            fontWeight: FontWeight.bold,
                          ),),
                        )
            
                      ],
                    )
                    ]
                    ),
                    
                    ),
          )
                  )
                  
    );
  }
}