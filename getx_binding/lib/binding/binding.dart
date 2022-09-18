import 'package:get/get.dart';
import 'package:getx_binding/controller/detail_controller.dart';
import 'package:getx_binding/controller/home_controller.dart';

class ControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => DetailController());
  }
}
