import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internationalization/model/home_model.dart';
import 'package:getx_internationalization/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: HomeModel(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      home: HomeView(),
    );
  }
}
