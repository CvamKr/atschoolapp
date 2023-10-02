import 'package:atschoolapp/presentation/ui/attendance/attendace_filter.dart';
import 'package:atschoolapp/presentation/ui/new_attendance/attendance_template.dart';
import 'package:atschoolapp/presentation/ui/new_attendance/new_filter_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NewAttendanceScreen extends StatefulWidget {
  const NewAttendanceScreen({super.key});

  @override
  State<NewAttendanceScreen> createState() => _NewAttendanceScreenState();
}

class _NewAttendanceScreenState extends State<NewAttendanceScreen> {
  TextEditingController controllerSearch =
      TextEditingController(text: "Search Student by Name");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Attendance',
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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              buildSearchBox(context),
              const SizedBox(
                height: 26,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return const AttendanceTemplate();
                },
              ),
            ],
          ),
        ));
  }

  Container buildStudentTemplate() {
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
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 25, left: 15.0, top: 10, bottom: 10),
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
            ),
            const Expanded(
                child: Text(
              'Satish Kumar',
              style: TextStyle(
                color: Color(0xFF142E47),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: -0.32,
              ),
            )),
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  buildPALBox('P'),
                  buildPALBox('A'),
                  buildPALBox('L'),
                ],
              ),
            ),
          ],
        ));
  }

  Widget buildPALBox(String attendanceStatus) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, top: 12, bottom: 0),
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        child: Center(
          child: Text(
            attendanceStatus,
            style: const TextStyle(
              color: Colors.black, // Change the text color as needed
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSearchBox(context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xFF142E47),
                    Color(0xFF1B456F),
                    Color(0xFF142E47),
                  ],
                  stops: [0.0, 0.6771, 1.0],
                  transform: GradientRotation(220.04),
                ),
                boxShadow: [
                  const BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 8.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              height: 50,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.white),
                    16.widthBox,
                    Expanded(
                      child: TextField(
                        controller: controllerSearch,
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )),
        ),
        13.widthBox,
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) => const NewAttendanceFilterScreen()));
            },
            icon: Image.asset('assets/images/Group.png'))
      ],
    );
  }
}
