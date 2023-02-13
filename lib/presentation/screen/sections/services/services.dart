import 'package:demirli_tech/presentation/screen/sections/services/services_mobile.dart';
import 'package:demirli_tech/presentation/screen/sections/services/services_tablet.dart';
import 'package:flutter/material.dart';
import '../../../responsive/responsive.dart';
import 'services_desktop.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServicesMobile(),
      tablet: ServicesTablet(),
      desktop: ServicesDesktop()
    );
  }
}