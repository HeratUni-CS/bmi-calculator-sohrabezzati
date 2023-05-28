import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String lebel;
  const IconContent({
    super.key,
    required this.icon,
    required this.lebel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      FaIcon(
        icon,
        size: 56,
      ),
      Text(lebel)
    ]);
  }
}
