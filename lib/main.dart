import 'package:finaltouches/binding/homebinding.dart';
import 'package:finaltouches/ui/dashboard.dart';
import 'package:finaltouches/ui/homeScreen.dart';
import 'package:finaltouches/ui/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => HomeScreen(),binding: HomeBinding()),
        GetPage(name: "/dashboard", page: () => Dashboard()),
        GetPage(name: "/profile", page: () => Profile()),
      ],
    );
  }
}
