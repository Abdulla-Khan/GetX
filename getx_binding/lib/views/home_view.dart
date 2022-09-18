import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomeVeiw extends StatelessWidget {
  const HomeVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text('${Get.find<HomeController>().counter}')), 
            ElevatedButton(
                onPressed: () {
                  Get.find<HomeController>().increment();
                },
                child: Text('Increment')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/detail');
                },
                child: Text('Detail Screen'))
          ],
        ),
      ),
    );
  }
}
