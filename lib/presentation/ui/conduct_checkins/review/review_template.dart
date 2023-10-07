import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ReviewTemplate extends StatelessWidget {
  const ReviewTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "1. I get nervous if have to speak with someone in authority (teacher, boss, etc.).",
            style: TextStyle(color: Color(0xff152c73)),
          ),
          8.heightBox,
          buildOptionsCard("Moderately"),
        ],
      ),
    );
  }

  Widget buildOptionsCard(String s) {
    return Container(
        margin: EdgeInsets.only(right: 8, bottom: 0),
        // decoration: BoxDecoration(color: Colors.grey[100]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: Text(
            s,
          ),
        ));
  }
}
