import 'package:flutter/material.dart';

class SectionBase extends StatelessWidget {
  const SectionBase({required this.height, required this.color, required this.child, Key? key}) : super(key: key);

  final double height;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      alignment: Alignment.center,
      color: color,
      child: child,
    );
  }
}
