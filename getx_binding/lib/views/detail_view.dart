import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/detail_controller.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text('${Get.find<DetailController>().text}'),
            ),
            TextField(
              controller: Get.find<DetailController>().txt,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<DetailController>().textUpdate();
                },
                child: Text('Update'))
          ],
        ),
      ),
    );
  }
}
