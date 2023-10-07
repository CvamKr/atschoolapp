import 'package:atschoolapp/presentation/ui/conduct_checkins/checkin_filter.dart';
import 'package:atschoolapp/presentation/ui/conduct_checkins/student_template.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../attendance/attendace_filter.dart';
import 'checkin_template.dart';

class SelectAndConductCheckIns extends StatelessWidget {
  SelectAndConductCheckIns({super.key});
  final TextEditingController controllerSeachCheckin = TextEditingController();

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
            // Text(
            //   "Selected Student",
            // ),
            // 8.heightBox,
            // StudentTemplate(),
            buildSearchBoxAndFilterIcon(context),
            16.heightBox,
            // Text("Select and conduct checkins"),
            // 8.heightBox,
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

  Widget buildSearchBoxAndFilterIcon(context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
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
                    Icon(Icons.search, color: Colors.white),
                    16.widthBox,
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search checkins",
                            hintStyle: TextStyle(color: Colors.grey)),
                        controller: controllerSeachCheckin,
                        style: TextStyle(color: Colors.white),
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
                  MaterialPageRoute(builder: (c) => CheckinFilterScreen()));
            },
            icon: Image.asset('assets/images/Group.png'))
      ],
    );
  }
}
