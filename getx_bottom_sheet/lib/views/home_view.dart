import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Sheet and Dynamic Themes')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                      Container(
                        child: Wrap(
                          children: [
                            ListTile(
                              leading: Icon(Icons.wb_sunny_outlined),
                              title: Text('Light Theme'),
                            ),
                            ListTile(
                              leading: Icon(Icons.wb_sunny),
                              title: Text('Dark Theme'),
                            )
                          ],
                        ),
                      ),
                      // barrierColor: Colors.white,
                      // isDismissible: false,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)));
                },
                child: Text('Bottom Sheet'))
          ],
        ),
      ),
    );
  }
}
