import 'package:demirli_tech/presentation/configs/app_space.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/home_title.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/home_vision_categories.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/section_home_base.dart';
import 'package:flutter/material.dart';

import '../../../configs/app_text_style.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionHomeBase(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 64,
          right: 64
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpace.verticalExpanded!,
            const HomeTitle(
              titleWidthFactor: 0.5,
            ),
            AppSpace.verticalExpanded!,
            HomeVisionCategories(
              radius: 80,
              style: AppTextStyle.h2!
            ),
            AppSpace.verticalExpanded!,
          ]
        ),
      ),
    );
  }
}
