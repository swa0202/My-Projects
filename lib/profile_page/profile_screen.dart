

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/profile_page/my_orders.dart';




class ProfileScreen extends StatelessWidget {
  const ProfileScreen ({super.key});

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
              child: Icon(
                Icons.keyboard_backspace_sharp, color: Colors.black, size: 26,),),

           Center(
             child: CircleAvatar(
               radius: 46, backgroundColor: Colors.white, backgroundImage: AssetImage('assets/images/img_1.png'),),),
            SizedBox(height: 10,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nombre de usuario: ', style: TextStyle(color: Colors.green,fontSize: 12,
                    decoration: TextDecoration.underline),),
                Text(' davidwatson198 ', style: TextStyle(color: Colors.green,fontSize: 12,),),
              ],),
            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.only(left: 25, right: 20, bottom: 5, top: 5),
              child: Container(
                child: Column(
                  children: [
                    Row(
                    mainAxisAlignment:  MainAxisAlignment.start,
                      children: [
                        Icon(Icons.shopping_bag_outlined, size: 30,color: Colors.green
                          ,),
                        SizedBox(width: 10,),
                        TextButton (
                          child: const Text('My Orders',
                              style: TextStyle(color: Colors.black54, fontSize: 17,)),
                          onPressed: () => Get.to(const MyOrder()),),

                      ],),
                   Divider(color: Colors.grey.shade200,thickness: 1,height: 3, ),

                    Row(
                      mainAxisAlignment:  MainAxisAlignment.start,
                      children: [
                        Icon(Icons.pending_outlined, size: 30,color: Colors.green
                          ,),
                        SizedBox(width: 10,),
                        TextButton (
                          child: const Text('My Details',
                              style: TextStyle(color: Colors.black54, fontSize: 17,)),
                          onPressed: () => Get.to(const ()),),

                      ],),
                    Divider(color: Colors.grey.shade200,thickness: 1,height: 3, ),

                    Row(
                      mainAxisAlignment:  MainAxisAlignment.start,
                      children: [
                        Icon(Icons.notifications_active_outlined, size: 30,color: Colors.green
                          ,),
                        SizedBox(width: 10,),
                        TextButton (
                          child: const Text('Notifications',
                              style: TextStyle(color: Colors.black54, fontSize: 17,)),
                          onPressed: () => Get.to(const ()),),

                      ],),
                    Divider(color: Colors.grey.shade200,thickness: 1,height: 3, ),

                    Row(
                      mainAxisAlignment:  MainAxisAlignment.start,
                      children: [
                        Icon(Icons.payments_outlined, size: 30,color: Colors.green
                          ,),
                        SizedBox(width: 10,),
                        TextButton (
                          child: const Text('Payment Method',
                              style: TextStyle(color: Colors.black54, fontSize: 17,)),
                          onPressed: () => Get.to(const ()),),

                      ],),
                    Divider(color: Colors.grey.shade200,thickness: 1,height: 3, ),

                    Row(
                      mainAxisAlignment:  MainAxisAlignment.start,
                      children: [
                        Icon(Icons.rate_review_outlined, size: 30,color: Colors.green
                          ,),
                        SizedBox(width: 10,),
                        TextButton (
                          child: const Text('Reviews and Opinions',
                              style: TextStyle(color: Colors.black54, fontSize: 17,)),
                          onPressed: () => Get.to(const ()),),

                      ],),
                    Divider(color: Colors.grey.shade200,thickness: 1,height: 3, ),

                    Row(
                      mainAxisAlignment:  MainAxisAlignment.start,
                      children: [
                        Icon(Icons.share_outlined, size: 30,color: Colors.green
                          ,),
                        SizedBox(width: 10,),
                        TextButton (
                          child: const Text('Share with friends',
                              style: TextStyle(color: Colors.black54, fontSize: 17,)),
                          onPressed: () => Get.to(const ()),),

                      ],),
                    Divider(color: Colors.grey.shade200,thickness: 1,height: 3, ),

                    Row(
                      mainAxisAlignment:  MainAxisAlignment.start,
                      children: [
                        Icon(Icons.star_rate_outlined, size: 30,color: Colors.green
                          ,),
                        SizedBox(width: 10,),
                        TextButton (
                          child: const Text('Rate the app',
                              style: TextStyle(color: Colors.black54, fontSize: 17,)),
                          onPressed: () => Get.to(const ()),),

                      ],),
                    Divider(color: Colors.grey.shade200,thickness: 1,height: 3, ),

                    Row(
                      mainAxisAlignment:  MainAxisAlignment.start,
                      children: [
                        Icon(Icons.question_mark, size: 30,color: Colors.green
                          ,),
                        SizedBox(width: 10,),
                        TextButton (
                          child: const Text('FAQ',
                              style: TextStyle(color: Colors.black54, fontSize: 17,)),
                          onPressed: () => Get.to(const ()),),

                      ],),
                    Divider(color: Colors.grey.shade200,thickness: 1,height: 3, ),

                    Row(
                      mainAxisAlignment:  MainAxisAlignment.start,
                      children: [
                        Icon(Icons.logout_outlined, size: 30,color: Colors.green
                          ,),
                        SizedBox(width: 10,),
                        TextButton (
                          child: const Text('Log out',
                              style: TextStyle(color: Colors.black54, fontSize: 17,)),
                          onPressed: () => Get.to(const ()),),

                      ],),
                    Divider(color: Colors.grey.shade200,thickness: 1,height: 3, ),
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    ),

    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.green,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_filled, color: Colors.white,),
          label: "Home",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined, color: Colors.white,),
          label: 'Cart',
        ), BottomNavigationBarItem(icon: Icon(Icons.person_3_outlined, color: Colors.white,),
          label: 'Profile',),
      ],

    ),
  );
  }
}