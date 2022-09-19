import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  GetStorage storage = GetStorage();
  var counter = 0.obs;

  void increment() {
    counter++;
    storage.write('counter', counter);
  }

  Widget displayCounter() {
    storage.writeIfNull('counter', 0);
    return Obx(() => Text('${storage.read('counter')}'));
  }
}
