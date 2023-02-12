import 'package:flutter/material.dart';

import 'about/about_desktop.dart';
import 'contact/contact_desktop.dart';
import 'home/home_desktop.dart';
import 'products/products_desktop.dart';
import 'services/services_desktop.dart';

enum BodySection {

  home("Ana Sayfa", HomeDesktop()),
  products("Ürünler", ProductsDesktop()),
  services("Hizmetler", ServicesDesktop()),
  about("Hakkımızda", AboutDesktop()),
  contact("İletişim", ContactDesktop());

  const BodySection(
    this.title,
    this.view
  );

  final String title;
  final Widget view;
}