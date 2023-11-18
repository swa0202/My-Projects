
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/reservation/reservation_screen.dart';
import '../const/styling.dart';

class AddData extends StatefulWidget{
  const AddData ({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  bool isChecked = true;
  bool isChecked1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 180,
              width: 480,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/booking.png'),fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.grey.shade800, BlendMode.modulate),

                ),),
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
                          fontSize: 16, color: Colors.white,fontWeight:FontWeight.w400 ),),
                    ),
                  ] ),),

            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text('Add your data  to complete the reservation',
                    style: TextStyle(color: Colors.grey, fontSize: 15,)),
              ),
            ),

            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10,bottom: 8),
                      child: Text('Name', style: TextStyle(
                        fontSize:14,fontWeight: FontWeight.w400, color: Colors.black,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10,bottom: 8),
                      child: Container(
                        height: 40,
                        width: 180,
                        child: const TextField( decoration: InputDecoration(
                          hintText: 'Mandatory',
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontStyle: FontStyle.italic,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0),),

                        )),
                      ),
                    ),]),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10, right: 10,bottom: 8,),
                          child: Text('Surname', style: TextStyle(
                            fontSize:14,fontWeight: FontWeight.w400, color: Colors.black,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,bottom: 8),
                          child: Container(
                            height: 40,
                            width: 180,
                            child: const TextField( decoration: InputDecoration(
                              hintText: 'Mandatory',
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontStyle: FontStyle.italic,),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(7)),
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 1.0),),)),
                          ),),],),
                        ]),

                        const SizedBox(height: 20,),

                        Row(
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10, right: 10,bottom: 8),
                                    child: Text('Phone Number', style: TextStyle(
                                      fontSize:14,fontWeight: FontWeight.w400, color: Colors.black,),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10,bottom: 8),
                                    child: Container(
                                      height: 40,
                                      width: 180,
                                      child: const TextField( decoration: InputDecoration(
                                        hintText: 'ex: 62233445',
                                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontStyle: FontStyle.italic,),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(7)),
                                          borderSide: BorderSide(
                                              color: Colors.grey,
                                              width: 1.0),),

                                      )),
                                    ),
                                  ),]),

                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10, right: 10,bottom: 8,),
                                    child: Text('Email Address', style: TextStyle(
                                      fontSize:14,fontWeight: FontWeight.w400, color: Colors.black,),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,bottom: 8),
                                    child: Container(
                                      height: 40,
                                      width: 180,
                                      child: const TextField( decoration: InputDecoration(
                                        hintText: 'abc@example.com',
                                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontStyle: FontStyle.italic,),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(7)),
                                          borderSide: BorderSide(
                                              color: Colors.grey,
                                              width: 1.0),),)),
                                    ),),

                      ]),
                          ],),
            const SizedBox(height: 20,),

            Row(
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10,bottom: 8),
                        child: Text('Special Request for the restaurant', style: TextStyle(
                          fontSize:12,fontWeight: FontWeight.w400, color: Colors.black,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10,bottom: 8),
                        child: Container(
                          height: 40,
                          width: 180,
                          child: const TextField( decoration: InputDecoration(
                            hintText: 'eg: Do you want a table by win',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 12, fontStyle: FontStyle.italic,),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(7)),
                              borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 1.0),),

                          )),
                        ),
                      ),]),

                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10,bottom: 8,),
                        child: Text('Offer Code', style: TextStyle(
                          fontSize:12,fontWeight: FontWeight.w400, color: Colors.black,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,bottom:8,),
                        child: Container(
                          height: 40,
                          width: 180,
                          child: const TextField( decoration: InputDecoration(
                            hintText: 'eg: Welcome16',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 12, fontStyle: FontStyle.italic,),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(7)),
                              borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 1.0),),)),
                        ),),

                    ]),
      ],),
                  Align( alignment:Alignment.bottomRight,
                       child: TextButton(
                           child: const Text('Apply', style: TextStyle(color: Colors.green,
                            fontSize: 14, fontWeight: FontWeight.normal,decoration: TextDecoration.underline,)
                           ),
                             onPressed: () { Get.to(const ());}
                       ),),

            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8,),
              child: ListTileTheme(
                horizontalTitleGap: 0,
                child: CheckboxListTile(
                  shape: const CircleBorder(side: BorderSide.none),
                  activeColor: Colors.green,
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: const EdgeInsets.all(2),
                  value: isChecked,
                  onChanged: (value){
                    setState(() => isChecked = value!);},
                  title: const Text("I do not want to receive communications from TheFork via email, and I will miss the best promotions, discounts with Yums and events. (Even if I don't check the box, I can unsubscribe at any time). ",
                    style: TextStyle(fontSize: 12, color: Colors.black,height: 1.8,),),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10,bottom: 10),
              child: ListTileTheme(
                horizontalTitleGap: 0,
                child: CheckboxListTile(
                  shape: const CircleBorder(side: BorderSide.none),
                  activeColor: Colors.green,
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: const EdgeInsets.all(2),
                  value: isChecked1,
                  onChanged: (value){
                    setState(() => isChecked1 = value!);},
                  title: const Text("I want to receive special offers and communications from the restaurant by email and SMS. ",
                    style: TextStyle(fontSize: 12, color: Colors.black,height: 1.8),),

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 18,),
              child: Container(
                width: 386,
                height: 56,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.green,),
                child: Center(
                  child: TextButton (
                    child: const Text('Confirm Reservation', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),),
                    onPressed: () => Get.to(const ReservationPage()),),),
              ),),
            
            const Center(child: Text('With this reservation, you will earn 100 Yums',
            style: TextStyle(fontSize: 12,color: Colors.black,),)),

            const SizedBox(height: 10,),

            const Center(child: Text('Free Service: Availabilty confirmed immediately',
              style: TextStyle(fontSize: 12,color: Colors.black,),)),
            const SizedBox(height: 18,),
          ],),







      ),
    ),



    );
  }
}

