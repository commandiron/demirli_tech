class AppSize {
  static double? navBarHeight;
  static double? logoWidthDesktop;
  static double? logoWidthMobile;

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

  static void init() {
    navBarHeight = 96;
    logoWidthDesktop = 256;
    logoWidthMobile = 196;

    homeSectionHeight = 960;
    productsSectionHeight = 960;
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
