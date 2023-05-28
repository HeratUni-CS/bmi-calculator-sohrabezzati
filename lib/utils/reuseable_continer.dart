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
      width: double.maxFinite,
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.black12),
      child: child,
    );
  }
}
