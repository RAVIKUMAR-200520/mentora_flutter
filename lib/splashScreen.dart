import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentor_app/loginPage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    initial();

  }
  Future<void>initial()async{
    await Future.delayed(Duration(seconds: 2));
    Get.to(Loginpage(),transition: Transition.fadeIn,duration: Duration(seconds: 2));
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/assets/logo.png"),
      ),
    );
  }
}