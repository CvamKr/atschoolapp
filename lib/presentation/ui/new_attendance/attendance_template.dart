import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AttendanceTemplate extends StatelessWidget {
  const AttendanceTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        margin: const EdgeInsets.only(bottom: 14),
        // height: 100,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xBF142E47),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                buildUserAvatar(),
                buildUserInfo(),
                // buildRemarks(),
              ],
            ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Expanded(child: buildIntervention()),
            //     Expanded(child: buildAttendance()),
            //   ],
            // ),
            Container(
              // color: Colors.red,
              height: 120,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  buildIntervention(),
                  buildAttendance(),
                  buildRemarks()
                ],
              ),
            ),
            // buildRemarks()
          ],
        ));
  }

  Padding buildIntervention() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 8, top: 8, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Intervention",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          8.heightBox,
          Row(
            children: [
              buildInterventionCard("Individual"),
              buildInterventionCard("Group"),
            ],
          ),
          buildInterventionCard("Inclusive"),
        ],
      ),
    );
  }

  Widget buildInterventionCard(String s) {
    return Container(
        margin: EdgeInsets.only(right: 8, bottom: 8),
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(s),
        ));
  }

  Padding buildAttendance() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Attendance",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          8.heightBox,
          Row(
            children: [
              buildAttendanceCard("Present"),
              buildAttendanceCard("Absent"),
            ],
          ),
          Row(
            children: [
              buildAttendanceCard("Leave"),
              buildAttendanceCard("Late"),
            ],
          )
        ],
      ),
    );
  }

  Widget buildAttendanceCard(String s) {
    return Container(
        margin: EdgeInsets.only(right: 8, bottom: 8),
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(s),
        ));
  }

  Padding buildRemarks() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Remarks",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          8.heightBox,
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffCAC5C5), // Color of the underline
                  width: 1.0, // Adjust the width of the underline
                ),
              ),
            ),
            child: const Text(
              "3 times recorded today",
            ),
          )
        ],
      ),
    );
  }

  Expanded buildUserInfo() {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Satish Kumar',
          style: TextStyle(
            color: Color(0xFF142E47),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 0,
            letterSpacing: -0.32,
          ),
        ),
        Row(
          children: [const Text("Male"), 16.widthBox, const Text("VI")],
        )
      ],
    ));
  }

  Padding buildUserAvatar() {
    return Padding(
      padding:
          const EdgeInsets.only(right: 25, left: 15.0, top: 10, bottom: 10),
      child: Container(
        // width: 100,
        // height: 100,

        width: 40,
        height: 40,
        decoration: const ShapeDecoration(
          color: Color(0xFFE6E6E6),
          shape: OvalBorder(),
        ),

        child: Center(child: Image.asset('assets/images/Frame.png')),
      ),
    );
  }
}
