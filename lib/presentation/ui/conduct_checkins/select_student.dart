import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'student_template.dart';

class SelectStudent extends StatelessWidget {
  const SelectStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Select Students',
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
        body: ListView.builder(
          padding: EdgeInsets.all(24),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return StudentTemplate();
          },
        ),
      ),
    );
  }
}
