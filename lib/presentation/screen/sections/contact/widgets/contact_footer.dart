import 'package:flutter/material.dart';

import '../../../../configs/app_padding.dart';
import '../../../../configs/app_strings.dart';
import '../../../../configs/app_text_style.dart';


class ContactFooter extends StatelessWidget {
  const ContactFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: AppPadding.allL,
      child: Text(
        AppStrings.contactFooter!,
        style: AppTextStyle.b2!.copyWith(color: Colors.grey),
      ),
    );
  }
}
