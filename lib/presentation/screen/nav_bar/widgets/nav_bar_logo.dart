import 'package:demirli_tech/presentation/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../configs/app_assets.dart';


class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        BlocProvider.of<AppCubit>(context).scroll(0);
      },
      child: SizedBox(
        width: 256,
        child: Image.asset(
          Theme.of(context).brightness == Brightness.dark
            ? AppAssets.companyTextLogoWhiteIconPath!
            : AppAssets.companyTextLogoBlackIconPath!
        ),
      )
    );
  }
}
