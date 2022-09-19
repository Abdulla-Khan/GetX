import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/route_manager.dart';
import 'package:getx_todo/controller/home_controller.dart';

import '../view/home_view.dart';

class SplashController extends GetxController {
  void onInit() {
    Timer(Duration(seconds: 5), () {
      Get.toNamed('/home');
    });
  }
}
