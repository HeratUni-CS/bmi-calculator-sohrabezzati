import 'package:bmi_starting/user_input_page.dart';
import 'package:flutter/material.dart';

class ReuseableContiner extends StatelessWidget {
  final Widget child;
  const ReuseableContiner({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.black12),
      child: child,
    );
  }
}
