import 'package:flutter/material.dart';

import '../../../configs/app_size.dart';
import '../../widgets/section_base.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionBase(
      height: AppSize.aboutSectionHeight!,
      child: const Text("About")
    );
  }
}
