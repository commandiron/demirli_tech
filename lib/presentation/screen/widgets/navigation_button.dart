import 'package:flutter/material.dart';
import '../../configs/app_padding.dart';
import '../../configs/app_text_style.dart';

class NavigationButton extends StatelessWidget {

  const NavigationButton({
    Key? key,
    required this.label,
    this.style,
    this.highlighted = false,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final TextStyle? style;
  final bool highlighted;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.horizontalS!,
      child: highlighted
        ? Padding(
          padding: AppPadding.horizontalM!,
          child: ElevatedButton(
            onPressed: onPressed,
            child: Padding(
              padding: AppPadding.verticalS!,
              child: Text(
                label,
                style: AppTextStyle.b2!
              ),
            )
          ),
        )
        : TextButton(
        onPressed: onPressed,
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
        child: Padding(
          padding: AppPadding.verticalM!,
          child: Text(
            label,
            style: style
          ),
        )
      ),
    );
  }
}
