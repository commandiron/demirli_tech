import 'dart:ui';

import 'package:flutter/material.dart';

class CompanyContact {
  String url;
  String iconPath;
  Color iconOriginalColor;

  CompanyContact(
    {
      required this.url,
      required this.iconPath,
      required this.iconOriginalColor,
    }
  );

  static List<CompanyContact> items = [
    CompanyContact(
      url: "https://linkedin.com/in/emirdemirli/",
      iconPath: "assets/images/contact/linkedin_icon_20.png",
      iconOriginalColor: const Color(0xff0A66C2)
    ),
    CompanyContact(
      url: "https://instagram.com/emirdemirli/",
      iconPath: "assets/images/contact/instagram_icon_20.png",
      iconOriginalColor: const Color(0xffF206CB)
    ),
    CompanyContact(
      url: "https://facebook.com/emirdemirli",
      iconPath: "assets/images/contact/facebook_icon_20.png",
      iconOriginalColor: const Color(0xff1976D2)
    ),
    CompanyContact(
      url: "https://api.whatsapp.com/send?phone=905355085552",
      iconPath: "assets/images/contact/whatsapp_icon_20.png",
      iconOriginalColor: const Color(0xff00E676)
    ),
  ];
}