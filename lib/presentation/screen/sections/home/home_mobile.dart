import 'package:demirli_tech/presentation/configs/app_space.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/home_title.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/home_vision_categories.dart';
import 'package:demirli_tech/presentation/screen/sections/home/widgets/section_home_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../configs/app_text_style.dart';
import '../../../cubit/app_cubit.dart';
import '../../widgets/navigation_button.dart';
import '../body_section.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionHomeBase(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 64,
          left: 16,
          right: 16
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppSpace.verticalExpanded!,
            const HomeTitle(
              titleWidthFactor: 1,
            ),
            AppSpace.verticalExpanded!,
            FractionallySizedBox(
              widthFactor: 0.75,
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
