import 'package:flutter/material.dart';

import '../../../../configs/app_padding.dart';

class ProductsNextArrow extends StatelessWidget {
  const ProductsNextArrow({required this.size, required this.onTap, Key? key}) : super(key: key);

  final double size;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: AppPadding.horizontalL,
      child: InkWell(
        onTap: onTap,
        child: Icon(
          Icons.arrow_forward_ios,
          size: size,
          color: Theme.of(context).colorScheme.primary,
        ),
      )
    );
  }
}
