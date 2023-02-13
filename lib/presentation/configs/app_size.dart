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

    homeSectionHeight = MediaQuery.of(context).size.height;
    productsSectionHeight = MediaQuery.of(context).size.height - navBarHeight!;
    servicesSectionHeight = Responsive.isDesktop(context) ? 720 : Responsive.isTablet(context) ? 540 : MediaQuery.of(context).size.height - navBarHeight!;
    aboutSectionHeight = Responsive.isMobile(context) ? MediaQuery.of(context).size.height - navBarHeight! : 720;
    contactSectionHeight =  Responsive.isMobile(context) ? MediaQuery.of(context).size.height - navBarHeight! : 480;
  }
}
