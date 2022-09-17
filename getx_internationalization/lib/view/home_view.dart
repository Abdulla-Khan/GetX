import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_internationalization/controller/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  // HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internationalization'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'hello'.tr,
            ),
            Spacer(
              flex: 1,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('ur', 'PK'));
                },
                child: Text('Urdu')),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'US'));
                },
                child: Text('English')),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('es', 'MX'));
                },
                child: Text('Espanol')),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
