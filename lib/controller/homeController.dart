import 'package:finaltouches/ui/homeScreen.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
{
  var company= Company("Appsmaven", 100);
  increaseCount()
  {
    company.employees++;

    //only particular id will get notify about the changes e.g aow
    update(["aow"]);
    // company.update((val) {
    //
    //
    //   val.employees++;
    // });
  }



}