import 'package:atschoolapp/presentation/ui/conduct_checkins/questions/questions_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CheckInTemplate extends StatelessWidget {
  const CheckInTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16, bottom: 8),
            child: Wrap(
              alignment: WrapAlignment.start,
              children: [
                buildTag("Wellness"),
                buildTag("Psycological"),
                buildTag("Anxiety"),
                buildTag("Depression"),
              ],
            ),
          ),
          Container(
            // height: 100,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildIconImage(),
                buildCheckinInfo(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Adjust the radius as needed
                      ),
                      // elevation: 5, // Adjust the elevation as needed
                      side: BorderSide(
                        color: Color(0xff485f89), // Outline color
                      ),
                      foregroundColor: Color(0xff485f89),
                      padding: EdgeInsets.symmetric(
                        vertical: 8, // Adjust vertical padding
                        horizontal: 30, // Adjust horizontal padding
                      ),
                    ),
                    onPressed: () {
                      // Add your button click logic here
                    },
                    child: Text(
                      'Assign',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                8.widthBox,
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff485f89),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust the value as needed
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => QuestionsPage()));
                    },
                    child: Text('Conduct'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Expanded buildCheckinInfo() {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Social Interaction Axiety Scale',
          style: TextStyle(
            color: Color(0xFF142E47),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 0,
            letterSpacing: -0.32,
          ),
        ),
        4.heightBox,
        Text("No permission required"),
      ],
    ));
  }

  Padding buildIconImage() {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 15.0, top: 0, bottom: 0),
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

  Widget buildTag(
    String tag,
  ) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 4.0, bottom: 8),
        child: Container(
          decoration: ShapeDecoration(
            color: const Color(0xff163656),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
            child: Text(
              tag,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
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
