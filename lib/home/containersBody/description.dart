import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 25,
        ),
        const Text('thefork Deals', style: TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.w400,),),

        const SizedBox(
          height: 20,
        ),

        Padding(
          padding: const EdgeInsets.only(right: 25, left: 20,),
          child: Container(width: 330, height: 240,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.green,
                  offset: Offset(0.0, 1.0,),
                  blurRadius: 1.0,
                  spreadRadius: 1.0,),
              ],
              border: Border.all(
                color: Colors.grey,
                width: 0.5,),
            ),

            child: Padding(
              padding: const EdgeInsets.only(
                  right: 12, left: 12, top: 18, bottom: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 44,
                        height: 28,
                        color: Colors.green,
                        child: const Center(
                          child: Text('-30%',
                            style: TextStyle(color: Colors.white,
                              fontSize: 14,),),
                        ),),
                      const SizedBox(
                        width: 20,
                      ),

                      const Text('-30% on menu!',
                        style: TextStyle(fontSize: 16,),),
                    ],),
                  SizedBox(height: 12,),

                  const Text(
                    'Drinks and Menus not include.Valid in the selected time slot',
                    style: TextStyle(fontSize: 11.5,),),

                  SizedBox(height: 70,),

                  const Text('See Offer Details',
                    style: TextStyle(fontSize: 11.5,
                      color: Colors.green,),),

                  SizedBox(height: 14,),

                  Container(
                    height: 37,
                    width: 262,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.7,),),


                    child: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context, builder: (context) =>
                            AlertDialog(
                              content: SizedBox(
                                height: 160,
                                width: 300,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    bottom: 10,),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    mainAxisAlignment: MainAxisAlignment
                                        .start,
                                    children: [
                                      const Text(
                                        'Drinks and Menus not Include',
                                        style:
                                        TextStyle(fontSize: 15,
                                          color: Colors.grey,),),
                                      SizedBox(height: 20,),
                                      const Text(
                                        'Valid in the selected time slot',
                                        style:
                                        TextStyle(fontSize: 15,
                                          color: Colors.grey,),),
                                      SizedBox(height: 40),

                                      Container(
                                        height: 37,
                                        width: 262,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.green,
                                            width: 1,),),
                                        child: TextButton(
                                          child: const Text(
                                              'BOOK WITH THIS OFFER',
                                              style: TextStyle(
                                                  color: Colors
                                                      .grey,
                                                  fontSize: 12.5)),
                                          onPressed: () {
                                            Get.back();
                                          },),
                                      ),
                                    ],
                                  ),),
                              ),
                              icon: Container(
                                  alignment: Alignment.topRight,
                                  height: 18,
                                  width: 18,

                                  child: const Icon(
                                    Icons.close, size: 17,
                                    color: Colors.grey,)),
                            ),
                        );
                      },
                      child: const Text("BOOK WITH THIS OFFER",
                          style: TextStyle(fontSize: 10,
                            color: Colors.grey,
                            backgroundColor: Colors.white,)),


                    ),
                  ),
                ],
              ),
            ),
          ),),
      ],
    );
  }
}
