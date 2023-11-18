

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/data/data.dart';

class EnterEmail extends StatelessWidget{
  const EnterEmail ({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text('Enter Email'),
       backgroundColor: Colors.green,),
     body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             height: 150,
             width: 480,
             decoration: BoxDecoration(
                   image: DecorationImage(
                     image: const AssetImage('assets/images/booking.png'),fit: BoxFit.cover,
                       colorFilter: ColorFilter.mode(Colors.grey.shade800, BlendMode.modulate),

                   ),),
             child: const Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
             Text('Booking', style: TextStyle(fontSize: 16, color: Colors.white,),),
             SizedBox(height: 20,),
             Text('2 People | Thu 31 March | 14:30', style: TextStyle(
                fontSize: 16, color: Colors.white,fontWeight:FontWeight.w400 ),),
             ] ),),




           const Padding(
             padding: EdgeInsets.all(20.0),
             child: Center(
               child: Text('Indicate your email address to complete the reservation',
                   style: TextStyle(color: Colors.grey, fontSize: 15,)),
             ),
           ),

           const Padding(
             padding: EdgeInsets.only(left: 20, right: 20),
             child: Text('Email', style: TextStyle(
               fontSize:18, color: Colors.black54,),),
           ),

           const SizedBox(height: 10,),

           Padding(
             padding: const EdgeInsets.only(left: 20, right: 20),
             child: SizedBox(
               width: 386,
               height: 56,
               child: TextFormField(
                   decoration: const InputDecoration(
                     prefixIcon: Icon(Icons.alternate_email_outlined, size: 20,),
                     prefixIconColor: Colors.red,
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
           ),
           const SizedBox(height: 30,),

           Padding(
             padding: const EdgeInsets.only(left: 20, right: 20),
             child: Container(
               width: 386,
               height: 56,
                 decoration: const BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(16)),
                 color: Colors.green,),
               child: Center(
                child: TextButton (
                  child: const Text('Continue', style: TextStyle(
                     fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),),
                   onPressed: () => Get.to(const AddData()),),),
             ),),

           const SizedBox(height: 20,),

           const Center(child: Text('or', style: TextStyle(color: Colors.grey, fontSize: 16,),)),

           const SizedBox(height: 20,),

           Padding(
             padding: const EdgeInsets.only(left: 20, right: 20),
             child: Container(
               height: 56,
               width: 386,
               decoration: BoxDecoration (
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(16),
                 boxShadow: const [
                   BoxShadow(
                     color: Colors.black12,
                     offset: Offset(
                       1.0,
                       1.0,
                     ),
                     blurRadius: 5.0,
                     spreadRadius: 2.0,
                   ),
                 ],
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset('assets/images/google.png', width: 25 , height: 25,),
                   const SizedBox(width: 15,),
                   const Text('Continue with Google', style: TextStyle(
                     color: Colors.green,
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                   ),)
                 ],),
             ),
           ),

           const SizedBox(height: 20,),

           Padding(
             padding: const EdgeInsets.only(left: 20, right: 20),
             child: Container(
               height: 56,
               width: 386,
               decoration: BoxDecoration (
                 color: Colors.indigo,
                 borderRadius: BorderRadius.circular(16),
                 boxShadow: const [
                   BoxShadow(
                     color: Colors.black12,
                     offset: Offset(
                       1.0,
                       1.0,
                     ),
                     blurRadius: 5.0,
                     spreadRadius: 2.0,
                   ),
                 ],
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image.asset('assets/images/facebook_logo.png', width: 25 , height: 25,),
                   const SizedBox(width: 15,),
                   const Text('Continue with Facebook', style: TextStyle(
                     color: Colors.white,
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                   ),)
                 ],),
             ),
           ),


         ],
       ),
     ),


   );
  }
}