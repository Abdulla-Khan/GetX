import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/views/details_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  var data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('GetX Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(const DetailView(), arguments: [
                    'Image of Speedometer',
                    'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_960_720.jpg'
                  ]);
                },
                child: Text('Move to Next Screen')),
          ],
        ),
      ),
    );
  }
}
