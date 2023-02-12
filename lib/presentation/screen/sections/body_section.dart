import 'package:flutter/material.dart';

import 'about/about.dart';
import 'contact/contact.dart';
import 'home/home.dart';
import 'products/products.dart';
import 'services/services.dart';

enum BodySection {

  home("Ana Sayfa", Home()),
  products("Ürünler", Products()),
  services("Hizmetler", Services()),
  about("Hakkımızda", About()),
  contact("İletişim", Contact());

  const BodySection(
    this.title,
    this.view
  );

  final String title;
  final Widget view;
}