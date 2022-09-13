import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.snackbar('Snack Bar', 'This bar is shown using GetX',
                      snackPosition: SnackPosition.TOP,
                      // titleText: Text("Another Title"),
                      // messageText: Text('Another Message'),
                      // colorText: Colors.d
                      // borderWidth: 1,
                      // borderRadius: 200,
                      backgroundColor: Colors.black,
                      // animationDuration: Duration(seconds: 2),
                      maxWidth: MediaQuery.of(context).size.width,
                      backgroundGradient: LinearGradient(
                        colors: [
                          Colors.red.withOpacity(0.5),
                          Colors.red.withOpacity(0.3),
                          Colors.red.withOpacity(0.1),
                        ],
                      ),
                      // showProgressIndicator: true,
                      boxShadows: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 2,
                            offset: Offset(6, 10))
                      ],
                      isDismissible: true,
                      dismissDirection: DismissDirection.horizontal,
                      forwardAnimationCurve: Curves.easeIn,
                      icon: Icon(Icons.home),
                      shouldIconPulse: true,
                      // leftBarIndicatorColor: Colors.white,
                      // overlayBlur: 1,
                      // overlayColor: Colors.grey,
                      reverseAnimationCurve: Curves.easeOut,
                      mainButton: TextButton(
                          onPressed: () {
                            print('hemllo');
                          },
                          child: Text(
                            'Hemllo',
                            style: TextStyle(color: Colors.black),
                          )));
                },
                child: Text('Show Snack Bar'))
          ],
        ),
      ),
    );
  }
}
