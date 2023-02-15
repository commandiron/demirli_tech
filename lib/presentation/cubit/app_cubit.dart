import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../configs/app_size.dart';
import 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(
    AppState(
      scaffoldKey: GlobalKey<ScaffoldState>(),
      pageController: PageController(),
      carouselController: CarouselController(),
      carouselKey: GlobalKey()
    )
  );

  void scroll(int index) {
    double offset =
    index == 0
        ? 0
        : index == 1
        ? AppSize.homeSectionHeight! - AppSize.navBarHeight!
        : index == 2
        ? AppSize.homeSectionHeight! + AppSize.productsSectionHeight! - AppSize.navBarHeight!
        : index == 3
        ? AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! - AppSize.navBarHeight!
        : index == 4
        ? AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! + AppSize.aboutSectionHeight! - AppSize.navBarHeight!
        : 0;
    state.pageController.animateToPage(
      index,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut
    );
  }
}
