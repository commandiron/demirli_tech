import 'package:flutter/material.dart';

class CompanyService {
  String title;
  String logoAssetPath;
  List<Color> highlightedIconColorList;

  CompanyService(
      {
        required this.title,
        required this.logoAssetPath,
        required this.highlightedIconColorList
      }
      );

  static List<CompanyService> items = [
    CompanyService(
      logoAssetPath: "assets/images/service/design_development_icon_256.png",
      title: "Design & Development",
      highlightedIconColorList: [const Color(0xff02D9DE), const Color(0xffFC00FF),]
    ),
    CompanyService(
      logoAssetPath: "assets/images/service/smart_construction_icon_256.png",
      title: "Akıllı İnşaat Uygulamaları",
      highlightedIconColorList: [const Color(0xff02D9DE), const Color(0xffFC00FF),]
    ),
    CompanyService(
      logoAssetPath: "assets/images/service/robot_icon_256.png",
      title: "Yapay Zeka Araştırma ve Uygulama",
      highlightedIconColorList: [const Color(0xff02D9DE), const Color(0xffFC00FF),]
    ),
  ];
}