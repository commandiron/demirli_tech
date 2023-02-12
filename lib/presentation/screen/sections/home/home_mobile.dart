import 'package:demirli_tech/presentation/configs/app_space.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/home_title.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/home_vision_categories.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/section_home_base.dart';
import 'package:flutter/material.dart';

import '../../../configs/app_text_style.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionHomeBase(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 128,
          left: 16,
          right: 16
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpace.verticalExpanded!,
            const HomeTitle(
              titleWidthFactor: 1,
            ),
            AppSpace.verticalExpanded!,
            HomeVisionCategories(
              radius: 32,
              style: AppTextStyle.h2!,
            ),
            AppSpace.verticalExpanded!,
          ]
        ),
      ),
    );
  }
}