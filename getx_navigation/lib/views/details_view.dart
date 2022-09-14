import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Get.arguments[0],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
                height: 200,
                width: 300,
                child: Image.network(
                  Get.arguments[1],
                  fit: BoxFit.cover,
                )),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Move to Home Screen Screen'))
          ],
        ),
      ),
    );
  }
}
