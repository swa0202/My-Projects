

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/profile_page/notifications.dart';

class EditName extends StatelessWidget {
  const EditName ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Name'),
        backgroundColor: Colors.green,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('First Name', style: TextStyle(
                  fontSize: 16, color: Colors.black87,),),
                SizedBox(
                  height: 8,
                ),

                Container(
                  width: 360,
                  height: 56,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_2_outlined, size: 22,),
                        prefixIconColor: Colors.green,
                        hintText: 'David',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15,),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Colors.green,
                              width: 2.0),),

                    ),
                  ),),
                SizedBox(height: 20,),

                Text('Last Name', style: TextStyle(
                  fontSize: 16, color: Colors.black87,),),

                SizedBox(height: 8,),

                Container(
                  width: 360,
                  height: 56,
                  child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.alternate_email_outlined, size: 22,),
                        prefixIconColor: Colors.green,
                        hintText: 'Watson',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15,),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Colors.green,
                              width: 2.0),),
                      )
                  ),
                ),
                SizedBox(height: 50,),

                Container(
                  width: 360,
                  height: 56,
                  decoration: BoxDecoration (
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ) ,
                  child: Center(
                    child: TextButton(
                      onPressed: () => Get.to(const Notifications()),
                      child: Text('Save Info', style: TextStyle(color: Colors.white, fontSize: 14,
                        fontWeight: FontWeight.w600,),
                      ),
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