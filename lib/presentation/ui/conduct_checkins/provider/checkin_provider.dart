import 'package:flutter/material.dart';

class CheckinFilterProvider with ChangeNotifier {
  String selectedWellness = "";
  String selectedCategory = "";
  String selectedSubcategory = "";
  String selectedIssue = "";

  void setSelectedWellness(String newValue) {
    selectedWellness = newValue;
    notifyListeners();
  }

  void setSelectedIssue(String newValue) {
    selectedIssue = newValue;
    notifyListeners();
  }

  void setSelectedCategory(String newValue) {
    selectedCategory = newValue;
    notifyListeners();
  }

  void setSelectedSubcategory(String newValue) {
    selectedSubcategory = newValue;
    notifyListeners();
  }
}
