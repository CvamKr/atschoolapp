import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AttendanceFilterScreen extends StatelessWidget {
  const AttendanceFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Filter"),
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
              buildSubjects(),
              buildGrades(),
              buildSection(),
              buildSession(),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 100,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button's onPressed logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffB7C0C7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Adjust the border radius as needed
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 12),
                      child: Text('Apply Filter'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  buildSubjects() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Subject',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, // Change the text color as needed
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                createCustomCard('Mathematics'),
                createCustomCard('English'),
                createCustomCard('Science'),
                createCustomCard('Hindi'),
                createCustomCard('Social Science'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildGrades() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Grade',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, // Change the text color as needed
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                createCustomCard('LKG'),
                createCustomCard('UKG'),
                createCustomCard('I'),
                createCustomCard('II'),
                createCustomCard('III'),
                createCustomCard('IV'),
                createCustomCard('V'),
                createCustomCard('VI'),
                createCustomCard('VII'),
                createCustomCard('VIII'),
                createCustomCard('IX'),
                createCustomCard('X'),
              ],
            ),
          ),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Section',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, // Change the text color as needed
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                createCustomCard('A'),
                createCustomCard('B'),
                createCustomCard('C'),
                createCustomCard('D'),
                createCustomCard('E'),
              ],
            ),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Session',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, // Change the text color as needed
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                createCustomCard('1st'),
                createCustomCard('2nd'),
                createCustomCard('3rd'),
                createCustomCard('4th'),
                createCustomCard('5th'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget createCustomCard(String text) {
    return Card(
      elevation: 2, // Adjust the elevation as needed
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(10.0), // Adjust the border radius as needed
      ),
      child: Container(
        // width: 100,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black, // Change the text color as needed
            ),
          ),
        ),
      ),
    );
  }
}
