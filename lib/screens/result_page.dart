import 'package:bmi_starting/utils/reuseable_buttun.dart';
import 'package:bmi_starting/utils/reuseable_continer.dart';
import 'package:bmi_starting/utils/reuseable_text.dart';
import 'package:bmi_starting/utils/styled_number_text.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String shortResult;
  final String longResult;
  final String bmi;
  const ResultPage(
      {super.key,
      required this.shortResult,
      required this.longResult,
      required this.bmi});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: StyledNumberText(text: 'Your Result'),
        ),
        Expanded(
          child: ReuseableContiner(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ReuseableText(text: shortResult),
                StyledNumberText(text: bmi),
                ReuseableText(text: longResult),
              ],
            ),
          ),
        ),
        ReuseableButton(
          title: 'RE-CALCULATE',
          onPress: () {
            Navigator.pop(context);
          },
        )
      ]),
    ));
  }
}
