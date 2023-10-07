import 'package:atschoolapp/presentation/ui/conduct_checkins/questions/provider/questions_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class QuestionTemplate extends StatelessWidget {
  final int index;
  const QuestionTemplate({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final QuestionProvider questionProvider =
        Provider.of<QuestionProvider>(context);
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
              buildOptionsCard("Not at all", questionProvider),
              buildOptionsCard("Slightly", questionProvider),
              buildOptionsCard("Moderately", questionProvider),
              buildOptionsCard("Very", questionProvider),
              buildOptionsCard("Extremely", questionProvider)
            ],
          )
        ],
      ),
    );
  }

  Widget buildOptionsCard(String s, QuestionProvider questionProvider) {
    return InkWell(
      onTap: () {
        questionProvider.addSelectedOptionToList(s);
      },
      child: Container(
          margin: EdgeInsets.only(right: 8, bottom: 8),
          decoration: BoxDecoration(
            color: questionProvider.isSelected(index, s)
                ? Colors.blue
                : Colors.grey[100],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(s),
          )),
    );
  }
}
