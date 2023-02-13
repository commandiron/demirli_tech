import 'package:flutter/material.dart';

import '../responsive/responsive.dart';

class AppSize {
  static double? navBarHeight;
  static double? logoWidth;
  static double? homeSectionHeight;
  static double? productsSectionHeight;
  static double? servicesSectionHeight;
  static double? aboutSectionHeight;
  static double? contactSectionHeight;

  static void init(BuildContext context) {
    navBarHeight = Responsive.isMobile(context) ? 64 : 96;
    logoWidth = Responsive.isDesktop(context) ? 256 : Responsive.isTablet(context) ? 200 : 140;

    homeSectionHeight = Responsive.isMobile(context) ? 720 : 960;
    productsSectionHeight = Responsive.isMobile(context) ? 500: 960;
    servicesSectionHeight = 600;
    aboutSectionHeight = Responsive.isMobile(context) ? 600 : 720;
    contactSectionHeight = 400;
  }
}
