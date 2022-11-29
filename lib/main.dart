import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:note_pad/routing/routes.dart';
import 'package:note_pad/views/login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Future<void> main() async {
    await getControllers();
  }

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routes,
      home: LoginPage(),
    );
  }
}

