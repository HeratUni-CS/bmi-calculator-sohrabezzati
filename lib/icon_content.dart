import 'package:bmi_starting/reuseable_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String lebel;
  final void Function()? setGener;
  const IconContent({
    super.key,
    required this.icon,
    required this.lebel,
    this.setGener,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: setGener,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        FaIcon(
          icon,
          size: 56,
        ),
        SizedBox(
          height: 8,
        ),
        ReuseableText(text: lebel)
      ]),
    );
  }
}
