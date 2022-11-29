import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_pad/contollers/login_controller.dart';
import 'package:note_pad/data/source/images.dart';
import 'package:note_pad/data/source/strings.dart';
import 'package:note_pad/data/source/colors.dart';

import '../../data/source/colors.dart';

class LoginPage extends GetWidget<LoginController> {
  static const String routeName = '/views/login/login_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(loginAppBarText),
          backgroundColor: mainColor,
        ),
        body: _buildBody()
    );
  }

  Widget _buildBody(){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildImage(),
            _buildSpace(),
            _buildUserNAmeTextField(),
            _buildSpace(),
            _buildPassWordTextField(),
            _buildSpace(),
            _buildButton(),
            _buildSpace(),
            _buildRegisterText(),
            _buildSpace(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(){
    return Image.asset(toggLogo, height: Get.height* .34,);
  }

  Widget _buildUserNAmeTextField(){
    return TextField(
      decoration: InputDecoration(border: InputBorder.none, hintText: userNameText),
    );
  }

  Widget _buildPassWordTextField(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(border: InputBorder.none, hintText: userPassText),
    );
  }

  Widget _buildButton(){
    return SizedBox(
      height: 40,
        child: ElevatedButton(
          onPressed: (){},
          child: Text(loginButton,),
          style: ElevatedButton.styleFrom(
            primary: mainColor
          ),
        )
    );
  }

  Widget _buildSpace(){
    return SizedBox(height: 20,);
  }

  Widget _buildRegisterText(){
    return Text(registerQuestionText+" "+registerButtonText, textAlign: TextAlign.center, style: TextStyle(fontSize: 14));
  }
}
