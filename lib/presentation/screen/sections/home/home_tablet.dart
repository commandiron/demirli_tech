import 'package:demirli_tech/presentation/configs/app_space.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/home_title.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/home_vision_categories.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/section_home_base.dart';
import 'package:flutter/material.dart';

import '../../../configs/app_text_style.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionHomeBase(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 32,
          right: 32
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpace.verticalExpanded!,
            AppSpace.verticalExpanded!,
            const HomeTitle(
              titleWidthFactor: 1,
            ),
            AppSpace.verticalExpanded!,
            HomeVisionCategories(
              radius: 50,
              style: AppTextStyle.h2!,
            ),
            AppSpace.verticalExpanded!,
          ]
        ),
      ),
    );
  }
}
