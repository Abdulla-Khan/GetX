import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_snackbar/views/home_view.dart';

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
        title: 'Snack Bar',
        home: HomeView());
  }
}
