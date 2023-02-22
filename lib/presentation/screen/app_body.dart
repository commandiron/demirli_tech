import 'dart:ui';

import 'package:demirli_tech/presentation/cubit/app_cubit.dart';
import 'package:demirli_tech/presentation/cubit/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sections/body_section.dart';

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return CustomScrollView(
          controller: state.scrollController,
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.trackpad,
              PointerDeviceKind.touch
            },
          ),
          slivers: [
            SliverToBoxAdapter(
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: BodySection.values.map(
                        (section) => section.view
                ).toList(),
              ),
            )
          ],
        );
      },
    );
  }
}
