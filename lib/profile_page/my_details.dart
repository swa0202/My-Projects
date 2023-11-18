

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'edit_name.dart';

class MyDetails extends StatelessWidget {
  const MyDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Orders'),
        backgroundColor: Colors.green,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your name', style: TextStyle(
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
                        hintText:'Davidwatson198' ,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15,),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Colors.green,
                              width: 2.0),),
                          suffixIcon: TextButton(
                            child: Text("Edit",style: TextStyle(color: Colors.grey,
                                backgroundColor: Colors.transparent, fontSize: 10,
                            decoration: TextDecoration.underline,)),
                            onPressed: () => Get.to(const EditName()),
                      )
                  ),
                ),),
                SizedBox( height: 20,),

                Text('Email', style: TextStyle(
                  fontSize: 16, color: Colors.black87,),),

                SizedBox(height: 8,),

                Container(
                  width: 360,
                  height: 56,
                  child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.alternate_email_outlined, size: 22,),
                        prefixIconColor: Colors.green,
                        hintText:'davidwatson198@gmail.com' ,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15,),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Colors.green,
                              width: 2.0),),
                      )
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}