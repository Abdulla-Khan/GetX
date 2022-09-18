import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  var text = ''.obs;
  TextEditingController txt = TextEditingController();

  void textUpdate() {
    text.value = txt.text;
  }
}
