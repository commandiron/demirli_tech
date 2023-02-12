import 'package:demirli_tech/presentation/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../configs/app_config.dart';
import '../cubit/app_state.dart';
import 'app_body.dart';
import 'nav_bar/nav_bar_desktop.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);

    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          key: state.scaffoldKey,
          body: Stack(
            children: const [
              AppBody(),
              NavBarDesktop()
            ],
          )
        );
      },
    );
  }
}
