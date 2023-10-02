import 'package:atschoolapp/provider/attendance_filter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class NewAttendanceFilterScreen extends StatelessWidget {
  const NewAttendanceFilterScreen({super.key});

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
            buildGrade(attendanceFilterProvider),
            // buildGrade2(attendanceFilterProvider),
            buildPeriod(attendanceFilterProvider),
            // buildGender(attendanceFilterProvider),
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

  buildGrade(AttendanceFilterProvider attendanceFilterProvider) {
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
          Wrap(
            alignment: WrapAlignment.start,
            children: [
              buildGradeCard("LKG", attendanceFilterProvider),
              buildGradeCard("UKG", attendanceFilterProvider),
              buildGradeCard("I", attendanceFilterProvider),
              buildGradeCard("II", attendanceFilterProvider),
              buildGradeCard("III", attendanceFilterProvider),
              buildGradeCard("IV", attendanceFilterProvider),
              buildGradeCard("VV", attendanceFilterProvider),
              buildGradeCard("VII", attendanceFilterProvider),
              buildGradeCard("VIII", attendanceFilterProvider),
              buildGradeCard("XI", attendanceFilterProvider),
              buildGradeCard("X", attendanceFilterProvider),
            ],
          ),
        ],
      ),
    );
  }

  buildPeriod(AttendanceFilterProvider attendanceFilterProvider) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 19.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Session',
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
              buildPeriodCard('1st', attendanceFilterProvider),
              buildPeriodCard('2nd', attendanceFilterProvider),
              buildPeriodCard('3rd', attendanceFilterProvider),
              buildPeriodCard('4th', attendanceFilterProvider),
              buildPeriodCard('5th', attendanceFilterProvider),
              buildPeriodCard('6th', attendanceFilterProvider),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildPeriodCard(
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

  Widget buildGradeCard(
      String subjectName, AttendanceFilterProvider attendanceFilterProvider) {
    return InkWell(
      onTap: () {
        attendanceFilterProvider.setSelectedSubject(subjectName);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0, bottom: 8),
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
