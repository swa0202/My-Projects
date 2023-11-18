import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AuthController extends GetxController{
  TextEditingController emailCtrl = TextEditingController();

  login(){
    if(emailCtrl.text.isNotEmpty || emailCtrl.text != ''){
      print('email is not empty');
      print(emailCtrl.text);
    }
  }
  Incoming(){
    if(emailCtrl.text.isNotEmpty || emailCtrl.text != ''){
      print('email is not empty');
      print(emailCtrl.text);
    }
  }


}