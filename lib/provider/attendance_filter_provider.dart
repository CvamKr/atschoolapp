import 'package:flutter/material.dart';

class AttendanceFilterProvider with ChangeNotifier {
  String selectedSubject = "";

  List<String> listGrades = ['Kg', 'Ukg', 'I'];
  String? selectedGrade;

  String selectedDivision = "";
  String selectedGender = "";

  AttendanceFilterProvider() {
    selectedGrade = listGrades[0];
  }

  void setSelectedSubject(String newValue) {
    selectedSubject = newValue;
    notifyListeners();
  }

  void setSelectedGrade(String? newValue) {
    selectedGrade = newValue;
    notifyListeners();
  }

  void setSelectedDivision(String newValue) {
    selectedDivision = newValue;
    notifyListeners();
  }

  void setSelectedGender(String newValue) {
    selectedGender = newValue;
    notifyListeners();
  }
}
