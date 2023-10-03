import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class QuestionTemplate extends StatelessWidget {
  const QuestionTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "1. I get nervous if have to speak with someone in authority (teacher, boss, etc.)."),
          8.heightBox,
          Wrap(
            children: [
              buildOptionsCard("Not at all"),
              buildOptionsCard("Slightly"),
              buildOptionsCard("Moderately"),
              buildOptionsCard("Very"),
              buildOptionsCard("Extremely")
            ],
          )
        ],
      ),
    );
  }

  Widget buildOptionsCard(String s) {
    return Container(
        margin: EdgeInsets.only(right: 8, bottom: 8),
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(s),
        ));
  }
}
