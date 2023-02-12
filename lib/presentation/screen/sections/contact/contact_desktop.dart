import 'package:flutter/material.dart';

import '../../../configs/app_size.dart';
import '../../widgets/section_base.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionBase(
      height: AppSize.contactSectionHeight!,
      child: const Text("Contact")
    );
  }
}
