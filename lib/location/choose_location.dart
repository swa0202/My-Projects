

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:restaurant_app/booking/booking_confirm.dart';


class LocationSet extends StatelessWidget{
  const LocationSet ({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Choose Location'),
        backgroundColor: Colors.green,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Image(image: AssetImage('assets/images/location_image.png',)),
                
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 10, right: 20,bottom: 10,),
                  child: Row(
                    children: [
                      Text('Location', style:
                      TextStyle(fontSize: 21, fontWeight: FontWeight.w500,color: Colors.black87,),),

                      SizedBox(width: 45,),

                      Text('Melchor Fernandez Almagro \n Street, 62, 28029, Madrid, Spain', style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey,),),
                    ],
                  ),),


                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10, right: 20,bottom: 10,),
                  child: Row(
                    children: [
                      Text('Transport', style:
                      TextStyle(fontSize: 21, fontWeight: FontWeight.w500,color: Colors.black87,),),

                      SizedBox(width: 45,),

                      Text('Metro Barrio del Pilar (L9) and \n bus 147', style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey,),),
                     ]),),

                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 10, right: 20,bottom: 10,),
                        child: Row(
                          children: [
                            Text('Dine In Time', style:
                            TextStyle(fontSize: 21, fontWeight: FontWeight.w500,color: Colors.black87,),),

                            SizedBox(width: 25,),

                            Text('14:30', style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey,),),
                    ],),),
                SizedBox(height: 10,),

                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Container(
                      width: 340,
                      height: 54,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.green,),
                      child: Center(
                        child: TextButton (
                          child: Text('Continue', style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),),
                          onPressed: () => Get.to(const BookingConfirm()) ,),),
                    ),
                  ),
                ),

              ],),
          ),
        ),
      ),

    );

  }
}
