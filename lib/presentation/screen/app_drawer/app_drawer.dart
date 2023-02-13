import 'package:demirli_tech/presentation/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../configs/app_assets.dart';
import '../../configs/app_size.dart';
import '../../configs/app_space.dart';
import '../nav_bar/widgets/nav_bar_logo.dart';
import '../sections/body_section.dart';
import 'drawer_item.dart';

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
                itemBuilder: (context, index) => DrawerItem(
                  title: BodySection.values[index].title,
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
