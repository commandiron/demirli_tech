import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:demirli_tech/presentation/cubit/app_cubit.dart';
import 'package:demirli_tech/presentation/screen/sections/products/widget/carousel_item_tablet.dart';
import 'package:demirli_tech/presentation/screen/sections/products/widget/products_next_arrow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/company_product.dart';
import '../../../configs/app_padding.dart';
import '../../../configs/app_size.dart';
import '../../../cubit/app_state.dart';
import '../../widgets/section_base.dart';
import '../../widgets/section_title.dart';
import '../body_section.dart';

class ProductsTablet extends StatelessWidget {
  const ProductsTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionBase(
      height: AppSize.productsSectionHeight!,
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return Stack(
            children: [
              Column(
                children: [
                  SectionTitle(title: BodySection.products.title,),
                  Padding(
                    padding: AppPadding.verticalXL!,
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context).copyWith(
                        dragDevices: {
                          PointerDeviceKind.mouse,
                          PointerDeviceKind.touch,
                          PointerDeviceKind.trackpad
                        },
                      ),
                      child: CarouselSlider.builder(
                        key: state.carouselKey,
                        itemCount: CompanyProduct.items.length,
                        carouselController: state.carouselController,
                        options: CarouselOptions(
                          viewportFraction: 1.0,
                          height: AppSize.productsSectionHeight! / 1.5,
                        ),
                        itemBuilder: (context, index, realIndex) {
                          return CarouselItemTablet(
                            product: CompanyProduct.items[index]
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              ProductsNextArrow(
                size: 64,
                onTap: () {
                  state.carouselController.nextPage();
                }
              )
            ],
          );
        },
      ),
    );
  }
}
