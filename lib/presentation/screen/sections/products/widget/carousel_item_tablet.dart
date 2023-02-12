import 'package:flutter/material.dart';

import '../../../../../data/model/company_product.dart';
import '../../../../configs/app_assets.dart';
import '../../../../configs/app_padding.dart';
import '../../../../configs/app_space.dart';
import '../../../../configs/app_text_style.dart';

class CarouselItemTablet extends StatefulWidget {
  const CarouselItemTablet({required this.product, Key? key}) : super(key: key);

  final CompanyProduct product;

  @override
  State<CarouselItemTablet> createState() => _CarouselItemTabletState();
}

class _CarouselItemTabletState extends State<CarouselItemTablet> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(AssetImage(widget.product.logoAssetPath), context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: AppPadding.horizontalXXL,
      height: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 96,
                  height: 96,
                  child: Image.asset(widget.product.logoAssetPath),
                ),
                AppSpace.verticalM!,
                Container(
                  padding: AppPadding.horizontalS,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.name,
                        style: AppTextStyle.h2b!,
                      ),
                      AppSpace.verticalM!,
                      Text(
                        widget.product.shortDescription,
                        style: AppTextStyle.b2!,
                      ),
                      AppSpace.verticalXL!,
                      Text(
                        widget.product.fullDescription,
                        style: AppTextStyle.b3!,
                      ),
                      AppSpace.verticalXL!,
                      if(widget.product.stage == Stage.research)
                        Image.asset(
                          AppAssets.researchBadgePath!,
                          width: 160,
                        ),
                      if(widget.product.stage == Stage.development)
                        Image.asset(
                          AppAssets.developmentBadgePath!,
                          width: 160,
                        ),
                      if(widget.product.stage == Stage.live)
                        Column(
                          children: [
                            Image.asset(
                              AppAssets.appStoreBadgePath!,
                              width: 160,
                            ),
                            AppSpace.verticalL!,
                            Image.asset(
                              AppAssets.googlePlayBadgePath!,
                              width: 160,
                            ),
                          ],
                        )
                    ]
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
