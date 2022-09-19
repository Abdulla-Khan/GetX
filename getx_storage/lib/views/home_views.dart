import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_storage/controller/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  GetStorage storage = GetStorage();
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
            ),
            ElevatedButton(
                onPressed: () {
                  if (GetUtils.isEmail(controller.text)) {
                    storage.write('email', controller.text);
                    Get.snackbar('Correct Email', 'Email Saved');
                  } else {
                    Get.snackbar('Incorrect Email', 'Enter a valid Email');
                  }
                },
                child: Text('Write')),
            Text(storage.read('email').toString()),
            ElevatedButton(
                onPressed: () {
                  print(storage.read('email'));
                },
                child: Text('Read')),
          ],
        ),
      ),
    );
  }
}
