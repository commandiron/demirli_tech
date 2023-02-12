import 'package:flutter/material.dart';

import '../../../../../data/model/company_product.dart';
import '../../../../configs/app_assets.dart';
import '../../../../configs/app_padding.dart';
import '../../../../configs/app_space.dart';
import '../../../../configs/app_text_style.dart';

class CarouselItemDesktop extends StatefulWidget {
  const CarouselItemDesktop({required this.product, Key? key}) : super(key: key);

  final CompanyProduct product;

  @override
  State<CarouselItemDesktop> createState() => _CarouselItemDesktopState();
}

class _CarouselItemDesktopState extends State<CarouselItemDesktop> {

  double _imageOpacity = 0.5;

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
            flex: 2,
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
          AppSpace.horizontalXL!,
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(_imageOpacity), BlendMode.srcATop),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if(value){
                        _imageOpacity = 0.1;
                      } else {
                        _imageOpacity = 0.5;
                      }
                    });
                  },
                  child: Image.asset(widget.product.imageAssetPath)
                )
              )
            ),
          ),
          AppSpace.horizontalXL!,
        ],
      )
    );
  }
}
