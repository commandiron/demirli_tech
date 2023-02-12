import 'package:flutter/material.dart';

class HomeExpandedDivider extends StatelessWidget {
  const HomeExpandedDivider({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        color: Theme.of(context).colorScheme.primary,
        height: 2,
        thickness: 2,
      ),
    );
  }
}
