import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/Authorization/view/verification_page.dart';

import '../../const/styling.dart';

class RegisterScreen extends StatelessWidget{
  const RegisterScreen({super.key});

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
                Icons.keyboard_backspace_sharp,
                color: Colors.black,
                size: 26,
          ),
        ),
            const SizedBox(
                  height: 10,
                ),

              Padding(
               padding: EdgeInsets.only(left: 40, right: 40,),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Register', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.green,

                  ),),

                   SizedBox(
                     height: 12,
                   ),

                   Text('Create an account to access all the features of thefork!',
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.normal,
                       color: Colors.black,
                     ),
                   ),

                   SizedBox(
                     height: 35,
                   ),

                   Text('Email',
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.normal,
                       color: Colors.black,
                     ),
                   ),
                   const SizedBox(
                     height: 8,
                   ),

                   Container(
                     width: Dimension.cntMiniWidth,
                     height: Dimension.cntMiniHeight,
                     child: TextFormField(
                         decoration: const InputDecoration(
                           prefixIcon: Icon(Icons.alternate_email_outlined, size: 20,),
                           prefixIconColor: Colors.green,
                           hintText:'Ex: abc@example.com' ,
                           hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontStyle: FontStyle.italic),
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(16)),
                             borderSide: BorderSide(
                                 color: Colors.green,
                                 width: 2.0),),
                         )
                     ),
                   ),

                   const SizedBox(
                     height: 26,
                   ),

                   const Text('Your Name',
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.normal,
                       color: Colors.black,
                     ),
                   ),
                   const SizedBox(
                     height: 8,
                   ),

                   Container(
                     width: Dimension.cntMiniWidth,
                     height: Dimension.cntMiniHeight,
                     child: TextFormField(
                         decoration: const InputDecoration(
                           prefixIcon: Icon(Icons.perm_identity, size: 25,),
                           prefixIconColor: Colors.green,
                           hintText: 'Ex. Saul Ramirez',
                           hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontStyle: FontStyle.italic),
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(16)),
                             borderSide: BorderSide(
                                 color: Colors.green,
                                 width: 2.0),),
                         )
                     ),
                   ),

                   const SizedBox(
                     height: 26,
                   ),

                   const Text('Your Password', style: TextStyle(
                       fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black,
                     ),),
                   const SizedBox(height: 8,),

                   Container(
                     width: Dimension.cntMiniWidth,
                     height: Dimension.cntMiniHeight,
                     child: TextFormField(
                         decoration: const InputDecoration(
                           prefixIcon: Icon(Icons.lock_outline, size: 20,),
                           prefixIconColor: Colors.green,
                           hintText: AutofillHints.password ,
                           hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontStyle: FontStyle.italic),
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(16)),
                             borderSide: BorderSide(
                                 color: Colors.green,
                                 width: 2.0),),
                         )
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
                     child: const Center(
                       child: Text('Register', style: TextStyle(color: Colors.white, fontSize: 14,
                         fontWeight: FontWeight.w600,),
                       ),
                     ),),

                   const SizedBox(
                     height: 15,
                   ),

                   Padding(
                     padding: const EdgeInsets.only(right: 20),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Center(
                             child: const Text('Don’t have an account?', style: TextStyle(fontSize: 16),)),
                         TextButton(
                             child: Text('Login', style: TextStyle(color: Colors.green,
                               fontSize: 16,
                               fontWeight: FontWeight.bold,
                               decoration: TextDecoration.underline,
                             )),
                             onPressed: () { Get.to(const VerificationScreen());
                             }

                         )
                       ],

                     ),

                   ),
                 ],),
              ),
          ],
        ),
       ),




      ),
    );

  }
}
