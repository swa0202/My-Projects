import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/Authorization/controller/authController.dart';
import 'package:restaurant_app/const/styling.dart';
import '../welcome_page/welcome_screen.dart';
import 'register_page.dart';



class LogInScreen extends StatefulWidget{
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  AuthController authCtrl = Get.find<AuthController>();
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
            child: const Icon(
                Icons.keyboard_backspace_sharp,
              color: Colors.black,
              size: 26,
            ),
          ),

             const SizedBox(
               height: 10,
             ),


             Padding(
               padding: const EdgeInsets.only(left: 40,right: 40,),

               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Login', style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 24,
                 color: Colors.green,

                 ),),

                  const SizedBox(
                    height: 14,
                  ),

                  const Text('Login now to order your favourite meal and for reservations',
                      style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      ),
                    ),

                  const SizedBox(
                    height: 35,
                  ),

                  const Text('Email',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),

                  Container(
                     width: Dimension.cntMiniWidth,
                     height: Dimension.cntMiniHeight,
                     child: TextFormField(
                       controller: authCtrl.emailCtrl,
                         decoration: const InputDecoration(
                         prefixIcon: Icon(Icons.alternate_email_outlined, size: 20,),
                           prefixIconColor: Colors.green,
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

                  const SizedBox(
                    height: 26,
                  ),

                  const Text('Your Password',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),

                  Container(
                    width: Dimension.cntMiniWidth,
                    height: Dimension.cntMiniHeight,
                    child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline, size: 20,),
                          prefixIconColor: Colors.green,
                          hintText: AutofillHints.password ,
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontStyle: FontStyle.italic),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide(
                                color: Colors.green,
                                width: 2.0),),
                        )
                    ),
                  ),

                  const SizedBox(
                    height: 12,
                  ),

                  const Text('Forgot Password?',
                    style: TextStyle(
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.normal,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),

               GestureDetector(
                 onTap: (){
                   Get.find<AuthController>().login();
                 },
                 child: Container(
                   width: Dimension.cntMiniWidth,
                   height: Dimension.cntMiniHeight,
                   decoration: BoxDecoration (
                     color: Colors.green,
                     borderRadius: BorderRadius.circular(16),
                   ) ,
                   child: const Center(
                     child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 14,
                       fontWeight: FontWeight.w600,),
                     ),
                   ),),
               ),

                  const SizedBox(
                    height: 15,),

                  const Padding(
                    padding: EdgeInsets.only(right: 20,),
                    child: Divider(
                        color: Colors.grey,
                        height: 18,

                      ),),

                  const SizedBox(
                    height: 15,),

                  Container(
                    height: Dimension.cntMiniHeight,
                    width: Dimension.cntMiniWidth,
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
                        const Text('  Continue with Google', style: TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),)
                      ],),
                  ),

                  const SizedBox(
                    height: 20,),


                     Padding(
                       padding: const EdgeInsets.only(right: 20),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text('Don’t have an account?', style: TextStyle(fontSize: 16),),
                         TextButton(
                            child: const Text('Register', style: TextStyle(color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            )),
                            onPressed: () => Get.to(const RegisterScreen())


                        )
                       ],

                    ),

                  ),
                ],),
             ),
       ],
     ),
        ),
    ),
    );







  }
}