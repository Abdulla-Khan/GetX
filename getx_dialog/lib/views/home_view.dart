import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: 'Hemllo',
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('Get Back')),
                    ],
                    barrierDismissible: false
                    // confirm: IconButton(
                    //     onPressed: () {
                    //       print('Confirm');

                    //       Get.back();
                    //     },
                    //     icon: Icon(Icons.check)),
                    // cancel: IconButton(
                    //     onPressed: () {
                    //       Get.back();
                    //     },
                    //     icon: Icon(Icons.cancel)),
                    // textCancel: 'Cancel',
                    // textConfirm: 'Confirm'
                    // content: Row(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     CircularProgressIndicator(),
                    //     SizedBox(
                    //       width: 16,
                    //     ),
                    //     Expanded(
                    //       child: Text('Loading'),
                    //     )
                    //   ],
                    // )
                    );
              },
              child: Text('Show Dialog'),
            )
          ],
        ),
      ),
    );
  }
}
