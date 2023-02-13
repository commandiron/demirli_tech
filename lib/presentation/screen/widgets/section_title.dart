import 'package:flutter/material.dart';

import '../../configs/app_size.dart';
import '../../configs/app_text_style.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: AppSize.navBarHeight,
        alignment: Alignment.center,
        child: Text(
          title,
          style: AppTextStyle.h1!
        ),
      ),
    );
  }
}
