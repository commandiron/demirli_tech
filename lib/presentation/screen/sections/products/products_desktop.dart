import 'package:flutter/material.dart';

import '../../../configs/app_size.dart';
import '../../widgets/section_base.dart';

class ProductsDesktop extends StatelessWidget {
  const ProductsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionBase(
      height: AppSize.productsSectionHeight!,
      child: const Text("Products")
    );
  }
}
