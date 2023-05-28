import 'package:flutter/material.dart';

class StyledNumberText extends StatelessWidget {
  final String text;
  const StyledNumberText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: const TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 46,
      ),
    );
  }
}
