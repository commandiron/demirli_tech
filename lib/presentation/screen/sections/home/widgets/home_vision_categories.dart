import 'package:demirli_tech/presentation/screen/sections/home/widgets/vision_category_button.dart';
import 'package:flutter/material.dart';

import '../../../../configs/app_strings.dart';
import 'home_expanded_divider.dart';

class HomeVisionCategories extends StatefulWidget {
  const HomeVisionCategories({required this.radius, required this.style, super.key});

  final double radius;
  final TextStyle style;

  @override
  State<HomeVisionCategories> createState() => _HomeVisionCategoriesState();
}

class _HomeVisionCategoriesState extends State<HomeVisionCategories> {

  @override
  Widget build(BuildContext context) {

    List<Widget> list = <Widget>[];
    for(var i = 0; i < AppStrings.visionCategories!.length - 1; i++){
      list.add(SizedBox(width: widget.radius * 2,));
      list.add(const HomeExpandedDivider());
      if(i == AppStrings.visionCategories!.length - 2) {
        list.add(SizedBox(width: widget.radius * 2,));
      }
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Row(children: list),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: AppStrings.visionCategories!.map(
            (title) => VisionCategoryButton(
              radius: widget.radius,
              title: title,
              style: widget.style,
              hasApp: true,
            )
          ).toList()
        ),
      ],
    );
  }
}
