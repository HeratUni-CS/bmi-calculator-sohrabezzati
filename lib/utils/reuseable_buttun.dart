import 'package:bmi_starting/screens/result_page.dart';
import 'package:flutter/material.dart';

import '../bmi_brain.dart';

class ReuseableButton extends StatelessWidget {
  const ReuseableButton({
    super.key,
    this.value,
    this.weight,
    this.onPress,
    required this.title,
  });
  final String title;
  final double? value;
  final int? weight;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 64,
        width: double.maxFinite,
        decoration: BoxDecoration(color: Colors.red.shade400),
        child: TextButton(
            style: ButtonStyle(elevation: MaterialStateProperty.all(0)),
            onPressed: onPress,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 26,
                  fontWeight: FontWeight.w900),
            )));
  }
}
