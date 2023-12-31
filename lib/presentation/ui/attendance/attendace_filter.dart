import 'package:atschoolapp/provider/attendance_filter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class AttendanceFilterScreen extends StatelessWidget {
  const AttendanceFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AttendanceFilterProvider attendanceFilterProvider =
        Provider.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Filter',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF142E47),
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            letterSpacing: -0.32,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
        child: ListView(
          children: [
            buildSubjects(attendanceFilterProvider),
            buildGrade2(attendanceFilterProvider),
            buildDivision(attendanceFilterProvider),
            buildGender(attendanceFilterProvider),
            buildApplyFilterBtn()
          ],
        ),
      ),
    );
  }

  Center buildApplyFilterBtn() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
            width: 278,
            height: 49,
            decoration: ShapeDecoration(
              color: const Color(0xFF143447),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
            ),
            child: const Center(
              child: Text(
                'Apply Filter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            )),
      ),
    );
  }

  buildSubjects(AttendanceFilterProvider attendanceFilterProvider) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 34.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Subject',
            style: TextStyle(
              color: Color(0xFF142E47),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          19.heightBox,
          Wrap(
            alignment: WrapAlignment.start,
            children: [
              createSubjectCard("Maths", attendanceFilterProvider),
              createSubjectCard("English", attendanceFilterProvider),
              createSubjectCard("Gujarati", attendanceFilterProvider),
            ],
          ),
        ],
      ),
    );
  }

  buildGender(AttendanceFilterProvider attendanceFilterProvider) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 34.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Gender',
            style: TextStyle(
              color: Color(0xFF142E47),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          19.heightBox,
          Wrap(
            alignment: WrapAlignment.start,
            children: [
              createGenderCard("Male", attendanceFilterProvider),
              createGenderCard("Female", attendanceFilterProvider),
            ],
          ),
        ],
      ),
    );
  }

  buildDivision(AttendanceFilterProvider attendanceFilterProvider) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 19.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Division',
            style: TextStyle(
              color: Color(0xFF142E47),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          19.heightBox,
          Wrap(
            alignment: WrapAlignment.start,
            children: [
              buildDivisionCard('A', attendanceFilterProvider),
              buildDivisionCard('B', attendanceFilterProvider),
              buildDivisionCard('C', attendanceFilterProvider),
              buildDivisionCard('D', attendanceFilterProvider),
              buildDivisionCard('E', attendanceFilterProvider),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDivisionCard(
      String division, AttendanceFilterProvider attendanceFilterProvider) {
    return InkWell(
      onTap: () {
        attendanceFilterProvider.setSelectedDivision(division);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0, bottom: 15),
        child: Container(
          decoration: ShapeDecoration(
            color: attendanceFilterProvider.selectedDivision == division
                ? const Color(0xff163656)
                : const Color(0xFFD9EAFB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 13),
            child: Text(
              division,
              style: TextStyle(
                color: attendanceFilterProvider.selectedDivision == division
                    ? Colors.white
                    : Colors.black,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget createSubjectCard(
      String subjectName, AttendanceFilterProvider attendanceFilterProvider) {
    return InkWell(
      onTap: () {
        attendanceFilterProvider.setSelectedSubject(subjectName);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          decoration: ShapeDecoration(
            color: attendanceFilterProvider.selectedSubject == subjectName
                ? const Color(0xff163656)
                : const Color(0xFFD9EAFB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 13),
            child: Text(
              subjectName,
              style: TextStyle(
                color: attendanceFilterProvider.selectedSubject == subjectName
                    ? Colors.white
                    : Colors.black,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget createGenderCard(
      String gender, AttendanceFilterProvider attendanceFilterProvider) {
    return InkWell(
      onTap: () {
        attendanceFilterProvider.setSelectedGender(gender);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          decoration: ShapeDecoration(
            color: attendanceFilterProvider.selectedGender == gender
                ? const Color(0xff163656)
                : const Color(0xFFD9EAFB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 13),
            child: Text(
              gender,
              style: TextStyle(
                color: attendanceFilterProvider.selectedGender == gender
                    ? Colors.white
                    : Colors.black,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  buildGrade2(AttendanceFilterProvider attendanceFilterProvider) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 34.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Grade',
            style: TextStyle(
              color: Color(0xFF142E47),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          19.heightBox,
          Container(
            height: 48,
            decoration: ShapeDecoration(
              color: const Color(0xFFD9EAFB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Standard',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.all(5),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF163656),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Center(
                      child: DropdownButton<String>(
                        underline: Container(),
                        items: attendanceFilterProvider.listGrades
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          attendanceFilterProvider.setSelectedGrade(newValue);
                        },
                        value: attendanceFilterProvider.selectedGrade,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        selectedItemBuilder: (BuildContext context) {
                          return attendanceFilterProvider.listGrades
                              .map((String value) {
                            return Center(
                              child: Text(
                                value,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            );
                          }).toList();
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildSection() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Section',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Wrap(
            alignment: WrapAlignment.start,
            children: [
              createCustomCard('A'),
              createCustomCard('B'),
              createCustomCard('C'),
              createCustomCard('D'),
              createCustomCard('E'),
            ],
          ),
        ],
      ),
    );
  }

  buildSession() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Session',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Wrap(
            alignment: WrapAlignment.start,
            children: [
              createCustomCard('1st'),
              createCustomCard('2nd'),
              createCustomCard('3rd'),
              createCustomCard('4th'),
              createCustomCard('5th'),
            ],
          ),
        ],
      ),
    );
  }

  Widget createCustomCard(String text) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
