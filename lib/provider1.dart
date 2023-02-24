import 'package:flutter/cupertino.dart';

class providerdemo with ChangeNotifier {
  int count = 0;
  String title = "New project";

  void countfun() {
    count++;
    notifyListeners();
  }
}
