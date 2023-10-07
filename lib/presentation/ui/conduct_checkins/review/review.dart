import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:velocity_x/velocity_x.dart';

import 'review_template.dart';

class ReviewQuestion extends StatefulWidget {
  const ReviewQuestion({super.key});

  @override
  State<ReviewQuestion> createState() => _ReviewQuestionState();
}

class _ReviewQuestionState extends State<ReviewQuestion> {
  // TextEditingController textEditingController = TextEditingController();
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: const Text(
                'Preview And Submit',
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
              padding: EdgeInsets.all(16),
              children: [
                Text(
                    "Please review your answer for the questions then proceed to submit"),
                16.heightBox,
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ReviewTemplate();
                  },
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust the value as needed
                      ),
                    ),
                    onPressed: () {
                      _showMyDialog(context);
                    },
                    child: Text('Submit'),
                  ),
                ),
              ],
            )));
  }

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        TextEditingController textEditingController = TextEditingController();

        return AlertDialog(
          title: const Text('Provide Pin & submit'),
          content: Container(
            color: Colors.red,
            child: PinCodeTextField(
              length: 4,
              appContext: context,
              obscureText: false,
              animationType: AnimationType.fade,
              backgroundColor: Colors.white,
              cursorColor: Colors.black,
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  activeColor: Colors.black54,
                  selectedColor: Colors.black,
                  inactiveColor: Colors.black),
              animationDuration: Duration(milliseconds: 300),
              // backgroundColor: Colors.blue.shade50,
              enableActiveFill: false,
              // errorAnimationController: errorController,
              controller: textEditingController,
              onCompleted: (v) {
                print("Completed");
              },
              onChanged: (value) {
                print(value);
                setState(() {
                  currentText = value;
                });
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Submit'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
