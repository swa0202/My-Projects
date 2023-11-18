

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/profile_page/reviews_opinions.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethod();
}

class _PaymentMethod extends State<PaymentMethod> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(title: const Text('Choose Payment Method'),
      backgroundColor: Colors.green,),
    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20,top: 40,),
              child: Row(
                children: [
                  Image.asset('assets/images/american_express.png', width: 120, height: 62,),
                  SizedBox(width: 160,),
                  Radio(
                      value: 1, groupValue: _value,
                    activeColor: Colors.green,
                      onChanged: (value){
                        setState(() {
                          _value = value!;
                        });
                      },),


                ]),),
               SizedBox(height: 20,),

               Padding(
                 padding: const EdgeInsets.only(right: 20, left: 20,),
                 child: Row(
                    children: [
                      Image.asset('assets/images/master_card.png', width: 120, height: 62,),
                      SizedBox(width: 160,),
                      Radio(
                        value: 2, groupValue: _value,
                        activeColor: Colors.green,
                        onChanged: (value){
                          setState(() {
                            _value = value!;
                          });
                        },),


                    ]),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20,),
              child: Row(
                  children: [
                    Image.asset('assets/images/visa.png', width: 120, height: 62,),
                    SizedBox(width: 160,),
                    Radio(
                      value: 3, groupValue: _value,
                      activeColor: Colors.green,
                      onChanged: (value){
                        setState(() {
                          _value = value!;
                        });},),
                  ]),),
            SizedBox(height: 40,),

            Container(
              width: 350,
              height: 56,
              decoration: BoxDecoration (
                border: Border.all(color: Colors.green,width: 1),
                borderRadius: BorderRadius.circular(10),
              ) ,
              child: Center(
                child: TextButton(
                  onPressed: () => Get.to(const ()),
                  child: Text('Add Payment Method', style: TextStyle(color: Colors.green, fontSize: 16,
                    fontWeight: FontWeight.w600,),
                  ),
                ),
              ),),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20,),
              child: Divider(
                height: 5, color: Colors.grey.shade300, thickness: 0.8,
              ),),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20,),
              child: Row(
                children: [
                  Text('Total', style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black87,
                  ),),

                  SizedBox(width: 220,),

                Text('INR 250', style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black45,
                  ),),
                ],),),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Container(
                  width: 340,
                  height: 54,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.green,),
                  child: Center(
                    child: TextButton (
                      child: Text('Buy Now', style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),),
                      onPressed: () => Get.to(const ReviewOpinion()) ,),),
                ),
              ),
            ),

              ],)


        ),
      ),

    
  );
  }


}