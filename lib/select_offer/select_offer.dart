

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/email/enter_email.dart';

class SelectOffer extends StatefulWidget{
  const SelectOffer ({super.key});

  @override
  State<SelectOffer> createState() => _SelectOfferState();
}

class _SelectOfferState extends State<SelectOffer> {
  bool isChecked = true;
  bool isChecked1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search Restaurant'),
        backgroundColor: Colors.green, ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: 18, left: 18, top: 35, bottom: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Select any of the offer given below', style: TextStyle(color: Colors.grey, fontSize: 17,)),

                SizedBox( height: 35,),

                Container(
                  height: 92,
                  width: 432,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1,),
                    borderRadius: BorderRadius.all(Radius.circular(10),),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 44,
                            height: 28,
                            decoration: BoxDecoration(
                                color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text('-30%', style: TextStyle(color: Colors.white,
                                fontSize: 12,
                              ),),
                            ),),
                          const SizedBox(
                            width: 20,
                          ),

                          const Text('-30% on menu!', style: TextStyle(
                            fontSize: 12,color: Colors.black, fontWeight: FontWeight.w500,),),
                        ],
                      ),

                      CheckboxListTile(

                        shape: CircleBorder(side: BorderSide.none),
                        activeColor: Colors.green,
                        contentPadding: EdgeInsets.all(1),
                        value: isChecked,
                        onChanged: (value){
                          setState(() => isChecked = value!);},
                        title: Text(' Drinks and Menus not include. ',
                          style: TextStyle(fontSize: 16, color: Colors.black,),),

                      ),
                    ],),
                ),

                SizedBox( height: 40,),

                Container(
                  height: 92,
                  width: 432,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1,),
                    borderRadius: BorderRadius.all(Radius.circular(10),),),
                  child: Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                    CheckboxListTile(

                      shape:CircleBorder(side: BorderSide.none),
                      activeColor: Colors.green,
                      contentPadding: EdgeInsets.all(2.5),
                      value: isChecked1,
                        onChanged: (value){
                    setState(() => isChecked1 = value!);},
                      title: Text(' Make a reservation without any special offer',
                        style: TextStyle(fontSize: 15.5, color: Colors.black,),),


                      subtitle: Text(' The standard “a la carte” reservation without offer',
                        style: TextStyle(fontSize: 13.5, color: Colors.black,),),
                    ),
                    ],),
                  ),),
                SizedBox( height: 40,),

                Align( alignment: Alignment.center,
                  child: Container(
                    height: 56,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10),),
                    ),
                    child: TextButton(child: const Text('Reserve Now', style: TextStyle(color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    )),
                        onPressed: () { Get.to(const EnterEmail());}

                    ),
                  ),),


              ],
            ),
          ),
        ),
      ),


    );

  }
}