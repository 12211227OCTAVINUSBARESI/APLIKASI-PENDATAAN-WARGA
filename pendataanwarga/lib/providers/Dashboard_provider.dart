import 'package:flutter/material.dart';

class Dashboardprovider with ChangeNotifier {
  int tabaktif = 0;

  void ubahTab(int index) {
    tabaktif = index;
    notifyListeners();
  }
}

class Beritapanelprovider with ChangeNotifier {
  bool modecari = false;

  void ubahmode(){
    modecari = !modecari;
    notifyListeners();
  }
}
