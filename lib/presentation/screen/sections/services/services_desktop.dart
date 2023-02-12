import 'package:flutter/material.dart';

import '../../../configs/app_size.dart';
import '../../widgets/section_base.dart';

class ServicesDesktop extends StatelessWidget {
  const ServicesDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionBase(
      height: AppSize.servicesSectionHeight!,
      child: const Text("Services")
    );
  }
}
