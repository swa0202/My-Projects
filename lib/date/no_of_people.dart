import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restaurant_app/select_offer/select_offer.dart';

class NoOfPeople extends StatelessWidget{
  const NoOfPeople ({super.key});

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
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Choose a day and time to see if this special offer is available or not. Moreover, free services are available and reservations are confirmed immediately.",
                    style: TextStyle( fontSize: 16, color: Colors.grey,height: 1.35, ),),
                  SizedBox( height: 20,),

                  Container(
                    height: 280, width: 380,
                    decoration: BoxDecoration (
                      border: Border.all(color: Colors.grey, width: 1),),

                    child:GridView.count(
                    crossAxisCount: 4,

                    children:
                      List.generate(50, (index) {
                      return Padding(
                          padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 25 ,
                      width: 70,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0),),
                        border: Border.all(color: Colors.grey, width: 1),),
                      child: Center(child: Text('${(index+1)}')),
                      ),
                  );}
                        ),),
                  ),


                 SizedBox(height: 10,),

                  Align( alignment:Alignment.bottomRight,
                    child: TextButton(
                        child: const Text('Next>', style: TextStyle(color: Colors.green,
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                        )),
                        onPressed: () { Get.to(const SelectOffer());}

                    ),),
                ],),
            ),
          ),
        ),
      ),
    );

  }
}