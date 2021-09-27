import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${Get.arguments}"),
      ),
      body: Container(
        child: ElevatedButton(
          child: Text("Go back"),
          onPressed: (){
            Get.back();
          },

        ),
      ),
    );
  }
}
