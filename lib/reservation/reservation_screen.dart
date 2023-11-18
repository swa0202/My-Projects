import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/location/choose_location.dart';

class ReservationPage extends StatefulWidget{
  const ReservationPage ({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  bool isChecked = true;
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


              SizedBox(height: 60,),

              Center(child: Text('The reservation is confirmed',
                style: TextStyle(color: Colors.grey, fontSize: 16,),)),

              SizedBox(height: 10,),

              Center(child: Text('You will receive a confirmation by email .',
                style: TextStyle(color: Colors.grey, fontSize: 16,),)),

              SizedBox(height: 10,),

              Center(child: Text('Your 100  Yums will be added to your account.',
                style: TextStyle(color: Colors.grey, fontSize: 16,),)),

              SizedBox(height: 30,),

               Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 154,
                            width: 176,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400, width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(7)),),
                            child: Center(child: Image(image: AssetImage('assets/images/location.png'),
                              height: 48, width: 43,)),),
                        ),

                        Center(
                          child: TextButton (
                          child: const Text('How to get?',
                            style: TextStyle(color: Colors.black87, fontSize: 16,)),
                            onPressed: () => Get.to(const LocationSet()),),
                        ),
                      ],),

                    SizedBox(width: 5,),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 154,
                            width: 176,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400, width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(7)),),
                            child: Center(child: Image(image: AssetImage('assets/images/delete.png'),
                              height: 48, width: 43,)),),

                          SizedBox(height: 23,),

                          Center(child: Text('Cancel Booking',
                            style: TextStyle(color: Colors.black87, fontSize: 16,),))
                        ],),
                    ),
                  ],),





            ],),
        ),
      ),


    );

  }
}
