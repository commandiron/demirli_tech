import 'package:demirli_tech/presentation/cubit/app_cubit.dart';
import 'package:demirli_tech/presentation/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'configs/app_config.dart';
import 'cubit/app_state.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);

    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          key: state.scaffoldKey,
          endDrawer: !Responsive.isDesktop(context)
            ? const AppDrawer()
            : null,
          body: Stack(
            children: [
              const AppBody(),
              Responsive.isDesktop(context)
                  ? const NavBarDesktop()
                  : const NavBarMobile()
            ],
          )
        );
      },
    );
  }
}
