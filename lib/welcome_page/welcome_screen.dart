
import 'package:get/get.dart';


import 'package:flutter/material.dart';
import 'package:restaurant_app/Authorization/view/login.dart';
import 'package:restaurant_app/const/styling.dart';
import 'package:restaurant_app/splashscreen/splashscreen.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only
              (bottomLeft: Radius.elliptical(250,50),
                bottomRight: Radius.elliptical(1600,1200)
            ),

            child: Container(
              height: 700,
              width: 679,
              color: Colors.green,

                child: Padding(
                  padding: const EdgeInsets.all(Dimension.paddingSizeExtraLarge),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height:200),

                      const Text('Welcome to', style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                      ),



                      const SizedBox(
                        height: 7,
                      ),

                      const Text('thefork', style : TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      ),

                      const SizedBox(
                        height: 7,
                      ),

                      const Text('A place that gives your hunger a new option and where desires meet with a new food' ,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white),
                      ),

                      const SizedBox(
                        height: 40,
                      ),


                      const Text('Let’s Get Started..' ,
                         style: TextStyle(
                             fontSize: 16,
                             color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      Container(
                        height: Dimension.cntMiniHeight,
                        width: Dimension.cntMiniWidth,
                        decoration: BoxDecoration (
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ) ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/google.png', width: 25 , height: 25,),
                            const Text('  Continue with Google', style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),)

                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Container(
                        height: Dimension.cntMiniHeight,
                        width: Dimension.cntMiniWidth,
                        decoration: BoxDecoration (
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ) ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/img.png', width: 25 , height: 25,),
                            const Text('  Continue with Email', style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],

                  ),
                ),
    ),
          ),

      SizedBox(
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Already have an account?', style: TextStyle(fontSize: 16),),

           TextButton(
               child: const Text('Login', style: TextStyle(color: Colors.green,
               fontSize: 16,
               fontWeight: FontWeight.bold,
               decoration: TextDecoration.underline
                 ,
              )),
             onPressed: () { Get.to(const LogInScreen());}

    ),
          ],
        ),
        ),
        ],
      ),
);













  }
}