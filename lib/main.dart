import 'package:demirli_tech/presentation/configs/app_theme.dart';
import 'package:demirli_tech/presentation/constants/constants.dart';
import 'package:demirli_tech/presentation/cubit/app_cubit.dart';
import 'package:demirli_tech/presentation/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const AppCore());
}

class AppCore extends StatelessWidget {
  const AppCore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: themeLight,
      darkTheme: themeDark,
      home: BlocProvider<AppCubit>(
        create: (context) => AppCubit(),
        child: const MainScreen(),
      ),
    );
  }
}