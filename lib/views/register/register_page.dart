import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_pad/contollers/register_controller.dart';

class RegisterPage extends GetWidget<RegisterController> {
  static const String routeName = '/views/register/register_page';
  RegisterController _registerController = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register Page appbar'),
        ),
        body: Center(
          child: Container(
            child: Text('Register Page'),
          ),
        ),

    );
  }
}
