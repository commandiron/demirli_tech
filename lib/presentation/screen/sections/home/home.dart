import 'package:flutter/material.dart';
import '../../../responsive/responsive.dart';
import 'home_desktop.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeDesktop(),
      tablet: HomeDesktop(),
      desktop: HomeDesktop()
    );
  }
}