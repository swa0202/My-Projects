

import 'package:flutter/material.dart';

class ReviewOpinion extends StatelessWidget {
  const ReviewOpinion({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold (
     appBar: AppBar(title: const Text('Reviews and Opinions'),
       backgroundColor: Colors.green,),
     body: SafeArea(
       child: SingleChildScrollView(
         child: Column(
           children: [

           ],
         ),
       ),
     ),
   );
  }
}