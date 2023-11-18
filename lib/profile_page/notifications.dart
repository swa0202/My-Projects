
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/profile_page/payment_method.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications'),
        backgroundColor: Colors.green,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20,right: 10, left: 10,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    TextButton(
                      child: Text('Receive push notifications', style:
                    TextStyle(fontSize: 16, color: Colors.black87),),
                     onPressed: () => Get.to(const PaymentMethod()),),
                  ],
                ),

                SizedBox(height: 10,),

                Row(
                  children: [
                    Text('SMS delivery notification', style:
                    TextStyle(fontSize: 16, color: Colors.black87),),

                  ],
                ),

                SizedBox(height: 10,),

                Row(
                  children: [
                    Text('Receive offers by email', style:
                    TextStyle(fontSize: 16, color: Colors.black87),),

                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}