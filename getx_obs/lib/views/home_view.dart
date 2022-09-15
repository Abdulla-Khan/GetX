import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  var text = ''.obs;
  TextEditingController txt = TextEditingController();

  void update() {
    text.value =  txt.text;  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetS Obs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(text.toString()),
            ),
            TextField(
              controller: txt,
            ),
            ElevatedButton(
                onPressed: () {
                  update();
                },
                child: Text('Update'))
          ],
        ),
      ),
    );
  }
}
