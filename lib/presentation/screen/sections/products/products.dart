import 'package:demirli_tech/presentation/screen/sections/products/products_desktop.dart';
import 'package:flutter/material.dart';

import '../../../responsive/responsive.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile:ProductsDesktop(),
      tablet: ProductsDesktop(),
      desktop: ProductsDesktop()
    );
  }
}