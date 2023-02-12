import 'package:demirli_tech/presentation/cubit/app_cubit.dart';
import 'package:demirli_tech/presentation/screen/nav_bar/widgets/nav_bar_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../configs/app_padding.dart';
import '../../configs/app_size.dart';
import '../../configs/app_space.dart';


class NavBarMobile extends StatelessWidget {
  const NavBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.navBarHeight,
      color: Theme.of(context).navigationBarTheme.backgroundColor,
      padding: AppPadding.horizontalL!.add(AppPadding.verticalM!),
      child: Row(
        children: [
          NavBarLogo(width: AppSize.logoWidthMobile!),
          AppSpace.horizontalExpanded!,
          IconButton(
            highlightColor: Theme.of(context).colorScheme.onPrimaryContainer,
            onPressed: () {
              BlocProvider.of<AppCubit>(context, listen: false).state.scaffoldKey.currentState!.openEndDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
