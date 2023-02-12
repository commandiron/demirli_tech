import 'package:flutter/material.dart';

import '../../../../configs/app_size.dart';
import '../../../../configs/app_text_style.dart';
import '../../body_section.dart';

class ProductsTitle extends StatelessWidget {
  const ProductsTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.navBarHeight,
      alignment: Alignment.center,
      child: Text(
        BodySection.products.title,
        style: AppTextStyle.h1!
      ),
    );
  }
}
