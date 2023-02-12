import 'package:flutter/material.dart';
import '../../../responsive/responsive.dart';
import 'services_desktop.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServicesDesktop(),
      tablet: ServicesDesktop(),
      desktop: ServicesDesktop()
    );
  }
}