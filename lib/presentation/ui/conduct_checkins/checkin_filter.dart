import 'package:atschoolapp/presentation/ui/conduct_checkins/provider/checkin_provider.dart';
import 'package:atschoolapp/provider/attendance_filter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class CheckinFilterScreen extends StatelessWidget {
  const CheckinFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CheckinFilterProvider checkinFilterProvider = Provider.of(context);

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
            buildWellness(checkinFilterProvider),
            // buildGrade2(checkinFilterProvider),
            buildCategories(checkinFilterProvider),
            buildSubCatergories(checkinFilterProvider),
            buildIssues(checkinFilterProvider),

            buildApplyFilterBtn()
          ],
        ),
      ),
    );
  }

  Center buildApplyFilterBtn() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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

  buildWellness(CheckinFilterProvider checkinFilerProvider) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 34.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Wellness',
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
              buildWellnessCard("Option A", checkinFilerProvider),
              buildWellnessCard("Option B", checkinFilerProvider),
              buildWellnessCard("Option C", checkinFilerProvider),
            ],
          ),
        ],
      ),
    );
  }

  buildSubCatergories(CheckinFilterProvider checkinFilterProvider) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 34.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sub categories',
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
              buildSubcategoriesCard("Sub A", checkinFilterProvider),
              buildSubcategoriesCard("Sub B", checkinFilterProvider),
            ],
          ),
        ],
      ),
    );
  }

  buildCategories(CheckinFilterProvider checkinFilterProvider) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 19.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Category',
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
              buildCategoryCard('A', checkinFilterProvider),
              buildCategoryCard('B', checkinFilterProvider),
              buildCategoryCard('C', checkinFilterProvider),
              buildCategoryCard('D', checkinFilterProvider),
              buildCategoryCard('E', checkinFilterProvider),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCategoryCard(
      String division, CheckinFilterProvider checkinFilterProvider) {
    return InkWell(
      onTap: () {
        checkinFilterProvider.setSelectedCategory(division);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0, bottom: 15),
        child: Container(
          decoration: ShapeDecoration(
            color: checkinFilterProvider.selectedCategory == division
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
                color: checkinFilterProvider.selectedCategory == division
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

  Widget buildWellnessCard(
      String subjectName, CheckinFilterProvider checkinFilterProvider) {
    return InkWell(
      onTap: () {
        checkinFilterProvider.setSelectedWellness(subjectName);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0, bottom: 8),
        child: Container(
          decoration: ShapeDecoration(
            color: checkinFilterProvider.selectedWellness == subjectName
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
                color: checkinFilterProvider.selectedWellness == subjectName
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

  Widget buildSubcategoriesCard(
      String gender, CheckinFilterProvider checkinFilterProvider) {
    return InkWell(
      onTap: () {
        checkinFilterProvider.setSelectedSubcategory(gender);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          decoration: ShapeDecoration(
            color: checkinFilterProvider.selectedSubcategory == gender
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
                color: checkinFilterProvider.selectedSubcategory == gender
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

  buildIssues(CheckinFilterProvider checkinFilterProvider) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 19.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Issues',
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
              buildIssuesCard('A', checkinFilterProvider),
              buildIssuesCard('B', checkinFilterProvider),
              buildIssuesCard('C', checkinFilterProvider),
              buildIssuesCard('D', checkinFilterProvider),
              buildIssuesCard('E', checkinFilterProvider),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIssuesCard(
      String issue, CheckinFilterProvider checkinFilterProvider) {
    return InkWell(
      onTap: () {
        checkinFilterProvider.setSelectedIssue(issue);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0, bottom: 15),
        child: Container(
          decoration: ShapeDecoration(
            color: checkinFilterProvider.selectedIssue == issue
                ? const Color(0xff163656)
                : const Color(0xFFD9EAFB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 13),
            child: Text(
              issue,
              style: TextStyle(
                color: checkinFilterProvider.selectedIssue == issue
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
}
