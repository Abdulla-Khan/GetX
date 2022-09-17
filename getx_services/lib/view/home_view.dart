import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_services/service/home_service.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  HomeService service = Get.put(HomeService());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Services'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  service.incrementCounter();
                },
                child: Text('Increment'))
          ],
        ),
      ),
    );
  }
}
