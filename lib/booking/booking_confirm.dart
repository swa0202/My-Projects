

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:restaurant_app/booking/cancel_booking.dart';

class BookingConfirm extends StatelessWidget{
  const BookingConfirm({super.key});

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

              Padding(
                padding: const EdgeInsets.only(top: 70,),
                child: Center(
                  child: Image(image: AssetImage('assets/images/booking_confirm.png',),
                  height: 332, width: 332,),
                ),
              ),
              
              SizedBox(height: 20,),
              
              Center(
                child: Text('CONGRATULATIONS!', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25,
                color: Colors.black87),),
              ),

              SizedBox(height: 20,),

              Center(
                child: Text('Your Booking has been confirmed.', style: TextStyle(fontSize: 16,
                    color: Colors.black87),),
              ),

              SizedBox(height: 40,),

              Center(
                child: TextButton(
                    child: const Text('Go back to home page', style: TextStyle(color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    )),
                    onPressed: () => Get.to(const BookingCancel())


                ),
              )


            ],
          ),
        ),
      ),
    );
      }
}
