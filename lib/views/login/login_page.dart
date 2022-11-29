import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_pad/contollers/login_controller.dart';

class LoginPage extends GetWidget<LoginController> {
  static const String routeName = '/views/login/login_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LoginPage app Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('LoginPage Hello World'),
          ),
        ),

    );
  }
}
