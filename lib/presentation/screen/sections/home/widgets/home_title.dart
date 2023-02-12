import 'package:flutter/material.dart';
import '../../../../configs/app_space.dart';
import '../../../../configs/app_strings.dart';
import '../../../../configs/app_text_style.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({this.titleWidthFactor, super.key});

  final double? titleWidthFactor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FractionallySizedBox(
          widthFactor: titleWidthFactor,
          child: Text(
            AppStrings.homeTitle!,
            style: AppTextStyle.h1b!.copyWith(color: Colors.white),
          ),
        ),
        AppSpace.verticalL!,
        Text(
          AppStrings.homeSubTitle!,
          style: AppTextStyle.h2!.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
