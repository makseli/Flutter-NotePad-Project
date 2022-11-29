import 'package:get/get.dart';
import 'package:note_pad/contollers/add_note_controller.dart';
import 'package:note_pad/contollers/home_controller.dart';
import 'package:note_pad/contollers/login_controller.dart';
import 'package:note_pad/contollers/register_controller.dart';
import 'package:note_pad/views/add_note/add_note_page.dart';
import 'package:note_pad/views/home/home_page.dart';
import 'package:note_pad/views/login/login_page.dart';
import 'package:note_pad/views/register/register_page.dart';

List<GetPage> routes  = [
  GetPage(name: HomePage.routeName, page: () => HomePage()),
  GetPage(name: LoginPage.routeName, page: () => LoginPage()),
  GetPage(name: RegisterPage.routeName, page: () => RegisterPage()),
  GetPage(name: AddNotesPage.routeName, page: () => AddNotesPage()),
];

Future getControllers() async {
  Get.create(() => LoginController(), permanent: false);
  Get.create(() => HomeController(), permanent: false);
  Get.create(() => RegisterController(), permanent: false);
  Get.create(() => AddNoteController(), permanent: false);
}