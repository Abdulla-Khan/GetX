import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_binding/binding/binding.dart';
import 'package:getx_binding/views/detail_view.dart';
import 'package:getx_binding/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/detail', page: () => DetailView()),
      ],
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinding(),
      home: HomeVeiw(),
    );
  }
}
