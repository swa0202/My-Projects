

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restaurant_app/date/no_of_people.dart';

class TimeSet extends StatelessWidget{
  const TimeSet ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Search Restaurant'),
        backgroundColor: Colors.green, ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 12, left: 12, top: 30, bottom: 20,),
              child: Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Choose a day and time to see if this special offer is available or not. Moreover, free services are available and reservations are confirmed immediately.",
                      style: TextStyle( fontSize: 16, color: Colors.grey,height: 1.35, ),),
                    SizedBox( height: 20,),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          height: 250, width: 390,
                          decoration: BoxDecoration (
                            border: Border.all(color: Colors.grey, width: 1),),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Food', style: TextStyle( fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black,),),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 70, height: 48,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          flex: 1 ,child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(5), topLeft: Radius.circular(5),),
                                          border: Border.all(color: Colors.grey, width: 1,),),
                                        child: const Center
                                          (child: Text('14:00', style: TextStyle( fontSize: 12.5, color: Colors.black87),)),
                                      ),

                                      ),

                                      Expanded(flex:1,child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5),),),
                                        child: const Center
                                          (child: Text('-30%', style: TextStyle( fontSize: 12.5, color: Colors.white),)),
                                      ),),],),),



                                SizedBox(width: 20,),

                                Container(
                                  width: 70,
                                  height: 48,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 1 ,child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(5), topLeft: Radius.circular(5),),
                                          border: Border.all(color: Colors.grey, width: 1,),),
                                        child: const Center
                                          (child: Text('14:30', style: TextStyle( fontSize: 12.5, color: Colors.black87),)),
                                      ),

                                      ),

                                      Expanded(flex:1,child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5),),),
                                        child: const Center
                                          (child: Text('-30%', style: TextStyle( fontSize: 12.5, color: Colors.white),)),
                                      ),),],),),



                                SizedBox(width: 20,),

                                Container(
                                  width: 70,
                                  height: 48,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 1 ,child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(5), topLeft: Radius.circular(5),),
                                          border: Border.all(color: Colors.grey, width: 1,),),
                                        child: const Center
                                          (child: Text('15:00', style: TextStyle( fontSize: 12.5, color: Colors.black87),)),
                                      ),

                                      ),

                                      Expanded(flex:1,child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5),),),
                                        child: const Center
                                          (child: Text('-30%', style: TextStyle( fontSize: 12.5, color: Colors.white),)),
                                      ),),],),),
                              ],),
                                Text('Dinner', style: TextStyle( fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black,),),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all( Radius.circular(5),),
                                          border: Border.all(color: Colors.grey, width: 1,)),
                                        child: const Center(
                                            child: Text('21:30', style: TextStyle( fontSize: 12.5, color: Colors.black),)),
                                      ),
                                        SizedBox(width: 40,),

                                        Container(
                                          width: 70,
                                          height: 48,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all( Radius.circular(5),),
                                              border: Border.all(color: Colors.grey, width: 1,)),
                                          child: const Center(
                                              child: Text('22:00', style: TextStyle( fontSize: 12.5, color: Colors.black),)),
                                        ),


                                    ],
                                  ),
                                )


                          ],),
                          ),),),

                    SizedBox(height: 10,),

                    Align( alignment:Alignment.bottomRight,
                      child: TextButton(
                          child: const Text('Next>', style: TextStyle(color: Colors.green,
                            fontSize: 22,
                            fontWeight: FontWeight.normal,
                          )),
                          onPressed: () { Get.to(const NoOfPeople());}

                      ),
                    ),
                  ],
                ),
                  ),),
          ),
                ),
                        ),
                    );


  }
}