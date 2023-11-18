

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/profile_page/my_details.dart';

class MyOrder extends StatelessWidget {
  const MyOrder ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Orders'),

        backgroundColor: Colors.green,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100,),
                child: Center(
                  child: Image.asset('assets/images/no_order.png',
                      width: 148, height: 201,),),),
              Padding(
                padding: const EdgeInsets.only(top: 30,),
                child: Center(
                  child: Text('No orders yet', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700,
                  color: Colors.black87),)),),
              Padding(
                padding: const EdgeInsets.only(top: 20,),
                child: Text('You don’t have any orders yet. Try one of our awesome \n restaurants and place your first order!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.5),),),

              SizedBox(height: 20,),

              Container(
                width: 350,
                height: 56,
                decoration: BoxDecoration (
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(16),
                ) ,
                child: Center(
                  child: TextButton(
                    onPressed: () => Get.to(const MyDetails()),
                    child: Text('Browse Restaurants', style: TextStyle(color: Colors.white, fontSize: 16,
                      fontWeight: FontWeight.w600,),
                    ),
                  ),
                ),),



            ],


          ),
        ),
      ),
    );
  }
}