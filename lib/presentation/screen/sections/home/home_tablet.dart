import 'package:demirli_tech/presentation/configs/app_space.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/home_title.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/home_vision_categories.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/section_home_base.dart';
import 'package:demirli_tech/presentation/screen/widgets/navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../configs/app_size.dart';
import '../../../configs/app_text_style.dart';
import '../../../cubit/app_cubit.dart';
import '../body_section.dart';

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
            SizedBox(
              width: AppSize.logoWidth!,
              child: NavigationButton(
                label: BodySection.contact.title,
                highlighted: true,
                onPressed: () {
                  BlocProvider.of<AppCubit>(context, listen: false).scroll(4);
                },
              ),
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
