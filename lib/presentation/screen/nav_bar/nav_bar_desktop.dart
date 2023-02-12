import 'package:demirli_tech/presentation/configs/app_space.dart';
import 'package:demirli_tech/presentation/screen/nav_bar/widgets/contact_icon_button.dart';
import 'package:demirli_tech/presentation/screen/nav_bar/widgets/nav_bar_logo.dart';
import 'package:demirli_tech/presentation/screen/nav_bar/widgets/navbar_actions_button.dart';
import 'package:flutter/material.dart';

import '../../../data/model/company_contact.dart';
import '../../configs/app_padding.dart';
import '../../configs/app_size.dart';
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
          NavBarLogo(width: AppSize.logoWidthDesktop!,),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...BodySection.values.asMap().entries.map(
                    (bodySection) {
                      if(bodySection.value != BodySection.contact) {
                        return NavBarActionButton(
                          label: bodySection.value.title,
                          index: bodySection.key,
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
            width: AppSize.logoWidthDesktop!,
            child: NavBarActionButton(
              label: BodySection.contact.title,
              index: 4,
              highlighted: true,
            ),
          ),
          AppSpace.horizontalXL!,
        ],
      ),
    );
  }
}
