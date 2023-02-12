import 'package:flutter/material.dart';

class SectionBase extends StatelessWidget {
  const SectionBase({required this.height, required this.child, Key? key}) : super(key: key);

  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1
          )
        )
      ),
      child: child,
    );
  }
}
