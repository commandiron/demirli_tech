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
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: BodySection.values.length,
                (context, index) => BodySection.values[index].view
              )
            )
          ],
        );
      },
    );
  }
}
