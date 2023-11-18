import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/home/home_page.dart';

import '../../const/styling.dart';



class LocationAccessScreen extends StatelessWidget{
  const LocationAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SafeArea(
           child: SingleChildScrollView(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   TextButton(
                    onPressed: () { Get.back(); },
                         child: const Icon(
                            Icons.keyboard_backspace_sharp,
                            color: Colors.black, size: 26,
                         ),),
                   const SizedBox(
                     height: 10,
                   ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Grant your location access', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.green,

                  ),),

                  const SizedBox(
                    height: 12,
                  ),

                  const Text('thefork needs your location to show availability in your area.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  Container(
                      width: Dimension.cntMiniWidth,
                      height: Dimension.cntMiniHeight,
                      decoration: BoxDecoration (
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(16),
                      ) ,
                      child: TextButton(
                          child: Text('Use current location', style: TextStyle(color: Colors.white, fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),),
                          onPressed: () { Get.to( HomeScreen());
                          }

                      )
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  Container(
                    height: Dimension.cntMiniHeight,
                    width: Dimension.cntMiniWidth,
                    decoration: BoxDecoration (
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(
                            1.0,
                            1.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child:
                        const Center(
                          child: Text('Select another location', style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),),
                        )
                      ),

                ],
             ),
           ),
          ],),
             ),
          ),
    );

  }
}