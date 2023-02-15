import 'package:demirli_tech/presentation/cubit/app_cubit.dart';
import 'package:demirli_tech/presentation/screen/widgets/navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../configs/app_assets.dart';
import '../../configs/app_size.dart';
import '../../configs/app_space.dart';
import '../../configs/app_text_style.dart';
import '../nav_bar/widgets/nav_bar_logo.dart';
import '../sections/body_section.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      width: MediaQuery.of(context).size.width / 2,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(AppAssets.companyOnlyLogoIconPath!,fit: BoxFit.cover)
          ),
          Column(
            children: [
              AppSpace.verticalXL!,
              NavBarLogo(width: AppSize.logoWidth!,),
              AppSpace.verticalXL!,
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: BodySection.values.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => NavigationButton(
                  label: BodySection.values[index].title,
                  style: AppTextStyle.b2,
                  highlighted: index == 4,
                  onPressed: () {
                    BlocProvider.of<AppCubit>(context, listen: false).scroll(index);
                    Scaffold.of(context).closeEndDrawer();
                  }
                )
              ),
            ],
          ),
        ],
      )
    );
  }
}
