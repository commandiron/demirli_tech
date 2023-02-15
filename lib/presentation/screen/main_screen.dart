import 'package:demirli_tech/presentation/cubit/app_cubit.dart';
import 'package:demirli_tech/presentation/screen/nav_bar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:universal_html/html.dart';

import '../configs/app_config.dart';
import '../cubit/app_state.dart';
import '../responsive/responsive.dart';
import 'app_body.dart';
import 'app_drawer/app_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    AppConfig.init(context);

    return BlocBuilder<AppCubit, AppState>(
      builder: (_, state) {

        state.scrollController.addListener(() {
          if(state.scrollController.offset > 0) {
            document.documentElement?.requestFullscreen();
          } else {
            document.exitFullscreen();
          }
        });

        return Scaffold(
          key: state.scaffoldKey,
          endDrawer: !Responsive.isDesktop(context) ? const AppDrawer() : null,
          body: Stack(
            children: const [
              AppBody(),
              NavBar()
            ],
          )
        );
      },
    );
  }
}
