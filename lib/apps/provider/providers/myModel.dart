import 'dart:async';

import 'package:flutter/material.dart';

class MyModel extends ChangeNotifier {
  String name = "123";

  void update() {
    Timer(Duration(seconds: 3), () {
      print("notify");
      notifyListeners();
    });
  }
}
