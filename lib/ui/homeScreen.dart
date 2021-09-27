import 'package:finaltouches/controller/homeController.dart';
import 'package:finaltouches/ui/dashboard.dart';
import 'package:finaltouches/ui/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: ListView(

          children: [
            MaterialButton(
              onPressed: () {
                //default dialog of Getx
                Get.defaultDialog(
                    title: "My alert", middleText: "Shown by Getx");
              },
              child: Text("Show Dialog"),
            ),

            MaterialButton(
              onPressed: () {
                //Snackbar using Getx library
                Get.snackbar("Master Gaurav", "You're welcome!",
                    onTap: (_) =>
                        Get.snackbar("second", "You clicked on snackbar!"));
              },
              child: Text("Show Snackbar"),
            ),

            //Bottomsheet using Getx library
            MaterialButton(
              onPressed: () {
                Get.bottomSheet(
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                              onPressed: () {
                                Get.toNamed(
                                  "/dashboard",
                                  arguments: "Master is here",
                                );
                                // Get.off(Dashboard(),
                                //     transition: Transition.upToDown,
                                //     arguments: "Dashboard for master");
                              },
                              child: Text("Dashboard")),
                          MaterialButton(
                              onPressed: () {
                                Get.toNamed(
                                  "/profile",
                                  arguments: "Master is here",
                                );

                                // Get.to(Profile(),
                                //     arguments: "Master is here",
                                //     transition: Transition.zoom);
                              },
                              child: Text("Profile")),

                        ],
                      ),
                    ),
                    backgroundColor: Colors.red);
              },
              child: Text("Show Bottomsheet"),
            ),

         //   Obx(()=> Text("${controller.company.value.employees}")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetBuilder<HomeController>(
                  id: "aow",
                  builder: (controllers){
                    return Text("${Get.find<HomeController>().company.employees}");

                  },
                ),


                //in getbuilder we get more parameters to work on as compared to obx and Getx controller
                GetBuilder<HomeController>(
                  id: "iot",
                  builder: (controllers){
                    return Text("${Get.find<HomeController>().company.employees}");

                  },
                ),
              ],
            ),




            MaterialButton(
                onPressed: () {
                  Get.find<HomeController>().increaseCount();
                },
                child: Text("Increase count")),
          ],
        ),
      ),
    );
  }
}
class Company
{
  Company(this.name,this.employees);
  var name;
  var employees;
}
