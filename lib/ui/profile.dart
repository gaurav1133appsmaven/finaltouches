import 'package:finaltouches/controller/profileController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends GetView<ProfileController> {


  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Go back"),
              onPressed: (){
                Get.back();
              },

            ),


            Obx(()=>Text("${controller.age}")),
            OutlineButton(onPressed: (){

              controller.addAge();

            },child:Text("Add age"))



          ],
        ),
      ),
    );
  }
}
