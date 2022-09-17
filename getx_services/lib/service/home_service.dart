import 'dart:developer';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeService extends Service {
  Future<void> incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var counter = ((prefs.getInt('counter') ?? 0) + 1);
    // print(counter);
    showToast();
    await prefs.setInt('counter', counter.toInt());
  }

  Future<void> showToast() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    int count = (prefs.getInt('counter') ?? 0);

    Fluttertoast.showToast(
        msg: count.toString(), toastLength: Toast.LENGTH_SHORT);
  }
}
