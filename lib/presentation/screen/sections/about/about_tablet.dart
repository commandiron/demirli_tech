import 'package:demirli_tech/presentation/screen/widgets/section_title.dart';
import 'package:flutter/material.dart';

import '../../../configs/app_assets.dart';
import '../../../configs/app_size.dart';
import '../../../configs/app_space.dart';
import '../../../configs/app_strings.dart';
import '../../../configs/app_text_style.dart';
import '../../widgets/section_base.dart';
import '../body_section.dart';

class AboutTablet extends StatelessWidget {
  const AboutTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionBase(
      height: AppSize.aboutSectionHeight!,
      child: Column(
        children: [
          SectionTitle(title: BodySection.about.title,),
          Row(
            children: [
              AppSpace.horizontalExpanded!,
              Expanded(
                flex: 3,
                child: Text(
                  AppStrings.aboutText!,
                  style: AppTextStyle.b1,
                ),
              ),
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: 500,
                  child: Image.asset(
                    Theme.of(context).brightness == Brightness.dark
                      ? AppAssets.companyLogoWhiteIconPath!
                      : AppAssets.companyLogoBlackIconPath!
                  ),
                )
              ),
              AppSpace.horizontalExpanded!,
            ],
          )
        ],
      ),
    );
  }
}
