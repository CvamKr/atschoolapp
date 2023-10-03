import 'package:atschoolapp/presentation/ui/conduct_checkins/select_and_conduct_checkins.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentTemplate extends StatelessWidget {
  const StudentTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (c) => SelectAndConductCheckIns()));
      },
      child: Center(
        child: Container(
            // width: 100,
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
                  ],
                ),
              ],
            )),
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
          children: [
            const Text("#TRMD"),
            16.widthBox,
            const Text("M"),
            16.widthBox,
            Text("III B")
          ],
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
