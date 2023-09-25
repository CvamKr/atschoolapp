import 'package:atschoolapp/presentation/ui/attendance/attendace_filter.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Attendance"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              buildSearchBox(context),
              SizedBox(
                height: 16,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return buildStudentTemplate();
                },
              ),
            ],
          ),
        ));
  }

  Container buildStudentTemplate() {
    return Container(
        width: 100,
        margin: EdgeInsets.only(bottom: 10),
        // height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // width: 100,
                // height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue, // Change the color as needed
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'PJ',
                      style: TextStyle(
                        color: Colors.white, // Change the text color as needed
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                "Riya Jain",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            buildPALBox('P'),
            buildPALBox('A'),
            buildPALBox('L'),
          ],
        ));
  }

  Widget buildPALBox(String attendanceStatus) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, top: 8, bottom: 8),
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
            style: TextStyle(
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
              decoration: BoxDecoration(
                  color: Color(0xff142E47),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              // height: 20,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.white),
                    16.widthBox,
                    Text(
                      "Search Student by Name",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )),
        ),
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (c) => AttendanceFilterScreen()));
            },
            icon: Icon(Icons.sort))
      ],
    );
  }
}
