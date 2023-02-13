import 'package:flutter/material.dart';

import '../../../configs/app_padding.dart';

class ContactIconButton extends StatefulWidget {
  const ContactIconButton(
    {
      required this.iconPath,
      required this.iconOriginalColor,
      required this.onTap,
      Key? key
    }
  ) : super(key: key);

  final String iconPath;
  final Color iconOriginalColor;
  final void Function() onTap;

  @override
  State<ContactIconButton> createState() => _ContactIconButtonState();
}

class _ContactIconButtonState extends State<ContactIconButton> {

  bool _isOnHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        setState((){
          _isOnHover = value;
        });
      },
      child: Padding(
        padding: AppPadding.horizontalS!,
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            _isOnHover
              ? widget.iconOriginalColor
              : Theme.of(context).colorScheme.onSecondaryContainer,
            BlendMode.srcATop
          ),
          child: Image.asset(
            widget.iconPath,
            width: 16,
          ),
        ),
      ),
    );
  }
}
