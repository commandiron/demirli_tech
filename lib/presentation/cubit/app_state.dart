import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class AppState {
  GlobalKey<ScaffoldState> scaffoldKey;
  PageController pageController;
  CarouselController carouselController;
  GlobalKey carouselKey;

  AppState(
    {
      required this.scaffoldKey,
      required this.pageController,
      required this.carouselController,
      required this.carouselKey
    }
  );
}
