import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../welcome_page/welcome_screen.dart';
import '../main.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 10), () {

      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context)=> const WelcomePage(),
      ));


    });
  }
    @override
    Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/fork1.png', width: 150, height: 130,),
              const Text('thefork',style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  )),


            ],
          ),
        ),
        ),
      );


  }
}







