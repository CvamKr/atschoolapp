import 'package:atschoolapp/presentation/ui/conduct_checkins/student_template.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'checkin_template.dart';

class SelectAndConductCheckIns extends StatelessWidget {
  const SelectAndConductCheckIns({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Select and Conduct Checkin',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF142E47),
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              // height: 0.05,
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
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Text(
              "Selected Student",
            ),
            8.heightBox,
            StudentTemplate(),
            16.heightBox,
            Text("Select and conduct checkins"),
            8.heightBox,
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return CheckInTemplate();
              },
            ),
          ],
        ),
      ),
    );
  }
}
