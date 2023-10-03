import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'question_template.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Question',
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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
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
            child: Row(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildIconImage(),
                buildCheckinInfo(),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return QuestionTemplate();
            },
          ),
        ],
      ),
    ));
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
        Text("#378"),
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
}
