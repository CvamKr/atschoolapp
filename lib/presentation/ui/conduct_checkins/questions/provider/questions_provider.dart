import 'package:flutter/material.dart';

class QuestionProvider extends ChangeNotifier {
  List<String> listQuestions = [];

  void addSelectedOptionToList(String option) {
    listQuestions.add(option);
    notifyListeners();
  }

  bool isSelected(int index, String selectedOption) {
    if (listQuestions.length <= index) {
      return false;
    }
    return listQuestions[index].contains(selectedOption) ? true : false;
  }
}
