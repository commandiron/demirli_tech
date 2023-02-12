import 'package:flutter/material.dart';
import '../../../responsive/responsive.dart';
import 'contact_desktop.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactDesktop(),
      tablet: ContactDesktop(),
      desktop: ContactDesktop()
    );
  }
}