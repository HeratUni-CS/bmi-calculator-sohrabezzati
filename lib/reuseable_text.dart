import 'package:flutter/material.dart';

class ReuseableText extends StatelessWidget {
  final String text;
  const ReuseableText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 14, color: Colors.amber),
    );
  }
}
