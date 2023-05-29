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
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 18, color: Colors.white54),
    );
  }
}
