import 'package:flutter/material.dart';
import '../../../responsive/responsive.dart';
import 'about_desktop.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: AboutDesktop(),
      tablet: AboutDesktop(),
      desktop: AboutDesktop()
    );
  }
}