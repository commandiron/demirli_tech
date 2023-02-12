import 'package:demirli_tech/presentation/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../configs/app_padding.dart';
import '../../../configs/app_text_style.dart';

class NavBarActionButton extends StatelessWidget {

  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index,
    this.highlighted = false
  }) : super(key: key);

  final String label;
  final int index;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.horizontalS!,
      child: highlighted
        ? Padding(
          padding: AppPadding.horizontalM!,
          child: ElevatedButton(
            onPressed: () {
              BlocProvider.of<AppCubit>(context, listen: false).scroll(index);
            },
            child: Padding(
              padding: AppPadding.verticalS!,
              child: Text(
                label,
                style: AppTextStyle.b2!
              ),
            )
          ),
        )
        : TextButton(
        onPressed: () {
          BlocProvider.of<AppCubit>(context, listen: false).scroll(index);
        },
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (states) {
              if (states.contains(MaterialState.hovered)) {
                return Theme.of(context).colorScheme.primary;
              }
              return Theme.of(context).colorScheme.onPrimaryContainer;
            },
          ),
          overlayColor: MaterialStateProperty.all(Colors.transparent)
        ),
        child: Padding(
          padding: AppPadding.verticalM!,
          child: Text(
            label,
            style: AppTextStyle.l1
          ),
        )
      ),
    );
  }
}
