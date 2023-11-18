

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/booking/reservation_cancel.dart';

class BookingCancel extends StatelessWidget{
  const BookingCancel ({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 180,
                width: 480,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/booking.png'),fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.grey.shade800, BlendMode.modulate),),),


          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () { Get.back(); },
                child: const Icon(
                  Icons.keyboard_backspace_sharp,
                  color: Colors.white,
                  size: 28,),
              ),
              const Center
                (child: Text('Booking', style: TextStyle(fontSize: 16, color: Colors.white,),)),
              const SizedBox(height: 20,),
              const Center(
                child: Text('2 People | Thu 31 March | 14:30', style: TextStyle(
                    fontSize: 16, color: Colors.white,fontWeight:FontWeight.w400 ),),),
            ],),),

              SizedBox(height: 30,),

              Center(child: Text('Are you sure you want to cancel the booking?',
                style: TextStyle(color: Colors.grey, fontSize: 15,),)),
              SizedBox(height: 30,),

              Center(
                child: Container(
                  width: 99,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Colors.green,),
                  child: Center(
                    child: TextButton (
                      child: Text('Yes', style: TextStyle(
                          fontSize: 15, color: Colors.white),),
                      onPressed: () => Get.to( CancelReservation ()) ,),),
                ),
              ),

              SizedBox(height: 20,),

              Center(
                child: Container(
                  width: 99,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    border: Border.all(color: Colors.grey, width: 1.5),),
                  child: TextButton (
                    child: Center(
                      child: Text('No', style: TextStyle(
                          fontSize: 15, color: Colors.green),),
                    ),
                    onPressed: () => Get.to( ()) ,),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
