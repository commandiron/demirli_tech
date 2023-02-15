import 'package:demirli_tech/presentation/configs/app_space.dart';
import 'package:demirli_tech/presentation/screen/nav_bar/widgets/contact_icon_button.dart';
import 'package:demirli_tech/presentation/screen/nav_bar/widgets/nav_bar_logo.dart';
import 'package:demirli_tech/presentation/screen/widgets/navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/company_contact.dart';
import '../../configs/app_padding.dart';
import '../../configs/app_size.dart';
import '../../configs/app_text_style.dart';
import '../../cubit/app_cubit.dart';
import '../../helper/url_launcher.dart';
import '../sections/body_section.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.navBarHeight,
      color: Theme.of(context).navigationBarTheme.backgroundColor,
      padding: AppPadding.horizontalL!.add(AppPadding.verticalM!),
      child: Row(
        children: [
          AppSpace.horizontalXL!,
          NavBarLogo(width: AppSize.logoWidth!,),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...BodySection.values.asMap().entries.map(
                    (bodySection) {
                      if(bodySection.value != BodySection.contact) {
                        return NavigationButton(
                          label: bodySection.value.title,
                          style: AppTextStyle.l1,
                          onPressed: () {
                            BlocProvider.of<AppCubit>(context, listen: false).scroll(bodySection.key);
                          },
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    }
                  ),
                ],
              ),
            )
          ),
          Row(
            children: CompanyContact.items.map(
              (companyContact) {
                return ContactIconButton(
                  iconPath: companyContact.iconPath,
                  iconOriginalColor: companyContact.iconOriginalColor,
                  onTap: () => openURL(companyContact.url),
                );
              }
            ).toList(),
          ),
          SizedBox(
            width: AppSize.logoWidth!,
            child: NavigationButton(
              label: BodySection.contact.title,
              style: AppTextStyle.l1,
              highlighted: true,
              onPressed: () {
                BlocProvider.of<AppCubit>(context, listen: false).scroll(4);
              },
            ),
          ),
          AppSpace.horizontalXL!,
        ],
      ),
    );
  }
}
