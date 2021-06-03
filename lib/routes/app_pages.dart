import 'package:get/get.dart';
import 'package:ignite_earning/pages/dashboard.dart';
import 'package:ignite_earning/pages/first_page.dart';
import 'package:ignite_earning/pages/login.dart';
import 'package:ignite_earning/pages/signUp.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => FirstPage()),
    GetPage(name: Routes.LOGINPAGE, page: () => LoginPage()),
    GetPage(name: Routes.SIGNUPPAGE, page: () => SignUpPage()),
    GetPage(name: Routes.DASHBOARD, page: () => DashBoard()),
  ];
}
