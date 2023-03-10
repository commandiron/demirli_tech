import 'package:demirli_tech/presentation/configs/app_size.dart';
import 'package:demirli_tech/presentation/configs/app_strings.dart';
import 'package:flutter/material.dart';

import 'app_assets.dart';
import 'app_padding.dart';
import 'app_space.dart';
import 'app_text_style.dart';

class AppConfig {

  static init(BuildContext context) {
    AppSize.init(context);
    AppTextStyle.init(context);
    AppSpace.init();
    AppPadding.init();
    AppStrings.init();
    AppAssets.init();
  }
}
