import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ignite_earning/routes/app_pages.dart';
import 'package:ignite_earning/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ignite Earning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Tahoma'
      ),
      initialRoute: Routes.INITIAL,
      getPages: AppPages.pages,
    );
  }
}