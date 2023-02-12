import 'package:flutter/cupertino.dart';

import '../responsive/responsive.dart';

class AppSize {
  static double? navBarHeight;
  static double? logoWidth;

  static double? homeSectionHeight;
  static double? homeAnimationStartOffset;
  static double? homeAnimationEndOffset;

  static double? productsSectionHeight;
  static double? productsAnimationStartOffset;
  static double? productsAnimationEndOffset;

  static double? servicesSectionHeight;
  static double? servicesAnimationStartOffset;
  static double? servicesAnimationEndOffset;

  static double? aboutSectionHeight;
  static double? aboutAnimationStartOffset;
  static double? aboutAnimationEndOffset;

  static double? contactSectionHeight;

  static void init(BuildContext context) {
    navBarHeight = 96;
    logoWidth = Responsive.isDesktop(context) ? 256 : 196;

    homeSectionHeight = MediaQuery.of(context).size.height;
    productsSectionHeight = MediaQuery.of(context).size.height - navBarHeight!;
    servicesSectionHeight = 720;
    aboutSectionHeight = 720;
    contactSectionHeight = 480;

    homeAnimationStartOffset = 0;
    homeAnimationEndOffset = AppSize.homeSectionHeight! +  AppSize.productsSectionHeight!;

    productsAnimationStartOffset = AppSize.homeSectionHeight! + AppSize.productsSectionHeight! / 2;
    productsAnimationEndOffset = AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight!;

    servicesAnimationStartOffset = AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! / 2;
    servicesAnimationEndOffset =  AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! + AppSize.aboutSectionHeight!;

    aboutAnimationStartOffset = AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! + AppSize.aboutSectionHeight! / 2;
    aboutAnimationEndOffset =  AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! + AppSize.aboutSectionHeight! + AppSize.contactSectionHeight! * 2;
  }
}
