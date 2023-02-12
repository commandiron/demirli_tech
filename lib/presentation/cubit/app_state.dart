import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class AppState {
  GlobalKey scaffoldKey;
  ScrollController scrollController;
  CarouselController carouselController;
  GlobalKey carouselKey;

  AppState(
    {
      required this.scaffoldKey,
      required this.scrollController,
      required this.carouselController,
      required this.carouselKey
    }
  );
}
