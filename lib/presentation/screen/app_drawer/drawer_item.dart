import 'package:flutter/material.dart';

import '../../configs/app_padding.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({required this.title, required this.onPressed,  Key? key}) : super(key: key);

  final String title;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.verticalS!,
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (states) {
              if (states.contains(MaterialState.hovered)) {
                return Theme.of(context).colorScheme.primary;
              }
              return Theme.of(context).colorScheme.onPrimaryContainer;
            },
          ),
          overlayColor: MaterialStateProperty.all(Colors.transparent)
        ),
        onPressed: onPressed,
        child: Text(title)
      ),
    );
  }
}
