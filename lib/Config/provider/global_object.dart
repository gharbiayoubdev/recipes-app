import 'package:flutter/material.dart';

class GlobalValues with ChangeNotifier {
  int homePageIndex = 2;

  setHomePageIndex(int index) {
    homePageIndex = index;
    notifyListeners();
  }



  
}
