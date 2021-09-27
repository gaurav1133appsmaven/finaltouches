import 'package:finaltouches/controller/homeController.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings

{
  @override
  void dependencies() {
 Get.lazyPut(() => HomeController());
  }

}