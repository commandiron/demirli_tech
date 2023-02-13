import 'package:flutter/material.dart';

import '../../../../configs/app_padding.dart';

class VisionCategoryButton extends StatefulWidget {
  const VisionCategoryButton(
      {required this.radius,
      required this.title,
      required this.style,
      this.hasApp = false,
      Key? key})
      : super(key: key);

  final double radius;
  final String title;
  final TextStyle style;
  final bool hasApp;

  @override
  State<VisionCategoryButton> createState() => _VisionCategoryButtonState();
}

class _VisionCategoryButtonState extends State<VisionCategoryButton> {
  bool _isOnHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.hasApp ? () {} : null,
      onHover: (value) {
        // setState(() {
        //   _isOnHover = value;
        // });
      },
      child: CircleAvatar(
        radius: widget.radius,
        backgroundColor: _isOnHover
          ? Theme.of(context).colorScheme.primary.withOpacity(0.75)
          : Theme.of(context).navigationBarTheme.backgroundColor,
        child: Padding(
          padding: AppPadding.allS!,
          child: FittedBox(
            child: Text(
              widget.title,
              style: widget.style,
            ),
          ),
        ),
      ),
    );
  }
}
