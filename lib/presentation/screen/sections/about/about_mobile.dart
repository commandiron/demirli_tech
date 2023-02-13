import 'package:demirli_tech/presentation/screen/widgets/section_title.dart';
import 'package:flutter/material.dart';

import '../../../configs/app_assets.dart';
import '../../../configs/app_size.dart';
import '../../../configs/app_space.dart';
import '../../../configs/app_strings.dart';
import '../../../configs/app_text_style.dart';
import '../../widgets/section_base.dart';
import '../body_section.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionBase(
      height: AppSize.aboutSectionHeight!,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 32,
          right: 32
        ),
        child: Column(
          children: [
            SectionTitle(title: BodySection.about.title,),
            Expanded(
              child: Column(
                children: [
                  AppSpace.verticalL!,
                  Expanded(
                    child: Image.asset(
                      Theme.of(context).brightness == Brightness.dark
                        ? AppAssets.companyLogoWhiteIconPath!
                        : AppAssets.companyLogoBlackIconPath!,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: Text(
                        AppStrings.aboutText!,
                        style: AppTextStyle.b2,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
