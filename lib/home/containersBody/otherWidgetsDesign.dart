import 'package:flutter/material.dart';

class OtherWidgetDesign extends StatelessWidget {
  const OtherWidgetDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, right: 20,bottom: 5,),
          child: Text('Incoming', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/incoming1.png',
              width: 150,
              height: 105,
            ),

            const Padding(
              padding: EdgeInsets.only(right: 10, left: 6,top: 0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Burrata with truffle cream and \n tomato', style: TextStyle(fontSize: 15),),
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
              'assets/images/incoming2.png',
              width: 150,
              height: 105,
            ),

            const Padding(
              padding: EdgeInsets.only(right: 10, left: 6,top: 0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Baked aubergine mille-feuille with \n mozzarella and parmesan', style: TextStyle(fontSize: 15),),
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
              'assets/images/incoming3.png',
              width: 150,
              height: 105,
            ),

            const Padding(
              padding: EdgeInsets.only(right: 10, left: 6,top: 0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Octopus carpaccio with lemon,\n arugula and tomato cherry', style: TextStyle(fontSize: 15),),
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
