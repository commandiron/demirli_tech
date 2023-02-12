import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';
import 'nav_bar_desktop.dart';
import 'nav_bar_mobile.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: NavBarMobile(),
      tablet: NavBarMobile(),
      desktop: NavBarDesktop()
    );
  }
}