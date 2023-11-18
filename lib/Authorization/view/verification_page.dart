import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/Authorization/view/location_access_page.dart';

import '../../const/styling.dart';



class VerificationScreen extends StatelessWidget{
  const VerificationScreen({super.key});

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

             Text('We have sent an email to your email account with a verification code!',
               style: TextStyle(
                 fontSize: 14,
                 fontWeight: FontWeight.normal,
                 color: Colors.black,
               ),
             ),

             SizedBox(
               height: 35,
             ),

             Text('Verification Code:',
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
                     hintText:'EX: 123456',
                     hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontStyle: FontStyle.italic,),
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

             Container(
               width: Dimension.cntMiniWidth,
               height: Dimension.cntMiniHeight,
               decoration: BoxDecoration (
                 color: Colors.green,
                 borderRadius: BorderRadius.circular(16),
               ) ,
               child: TextButton(
                   child: Text('Register', style: TextStyle(color: Colors.white, fontSize: 14,
                     fontWeight: FontWeight.w600,
                   ),),
                     onPressed: () { Get.to(const LocationAccessScreen());
                     }

                 )
                 ),
               ], ),
      ),
       ], ),
    ),
    ),
    );
  }
}
