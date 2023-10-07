import 'package:atschoolapp/presentation/ui/attendance/attendace_filter.dart';
import 'package:atschoolapp/presentation/ui/new_attendance/attendance_template.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'attendance_template.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
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
                boxShadow: const [
                  BoxShadow(
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (c) => const AttendanceFilterScreen()));
            },
            icon: Image.asset('assets/images/Group.png'))
      ],
    );
  }
}
