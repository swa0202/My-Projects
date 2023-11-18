import 'package:flutter/material.dart';

class Dessert extends StatelessWidget {
  const Dessert ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, right: 20,bottom: 5),
          child: Text('Dessert', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/dessert1.png',
              width: 150,
              height: 105,
            ),

            const Padding(
              padding: EdgeInsets.only(right: 10, left: 6,top: 0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Chiacchiere di Nutella', style: TextStyle(fontSize: 14),),
                  SizedBox(height: 10,),
                  Text('77 reviews', style: TextStyle(fontSize: 14),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('12.5', style: TextStyle(fontSize: 12),),
                      SizedBox(width: 150,),
                      Icon(Icons.shopping_cart_checkout_outlined),
                    ],)
                ],),
            )
          ],),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/dessert2.png',
              width: 150,
              height: 105,
            ),

            const Padding(
              padding: EdgeInsets.only(right: 10, left: 6,top: 0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Tiramisu', style: TextStyle(fontSize: 16),),
                  SizedBox(height: 10,),
                  Text('77 reviews', style: TextStyle(fontSize: 14),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('12.5', style: TextStyle(fontSize: 12),),
                      SizedBox(width: 150,),
                      Icon(Icons.shopping_cart_checkout_outlined),


                    ],)
                ],),
            )
          ],),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/dessert3.png',
              width: 150,
              height: 105,
            ),

            const Padding(
              padding: EdgeInsets.only(right: 10, left: 6,top: 0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Sicilian cannoli', style: TextStyle(fontSize: 14),),
                  SizedBox(height: 10,),
                  Text('77 reviews', style: TextStyle(fontSize: 14),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('12.5', style: TextStyle(fontSize: 12),),
                      SizedBox(width: 150,),
                      Icon(Icons.shopping_cart_checkout_outlined),
                    ],)
                ],),
            )
          ],),

      ],
    );
  }
}