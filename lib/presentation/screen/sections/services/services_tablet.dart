import 'package:demirli_tech/presentation/screen/sections/services/widgets/company_service_item.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/company_service.dart';
import '../../../configs/app_padding.dart';
import '../../../configs/app_size.dart';
import '../../widgets/section_base.dart';
import '../../widgets/section_title.dart';
import '../body_section.dart';

class ServicesTablet extends StatelessWidget {
  const ServicesTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionBase(
      height: AppSize.servicesSectionHeight!,
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Column(
        children: [
          SectionTitle(title: BodySection.services.title,),
          Expanded(
            child: FittedBox(
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: CompanyService.items.map(
                  (companyService) {
                    return Padding(
                      padding: AppPadding.horizontalL!,
                      child: CompanyServiceItem(
                        width: 400,
                        height: 400,
                        defaultColor: Theme.of(context).colorScheme.onPrimaryContainer,
                        companyService: companyService
                      ),
                    );
                  }
                ).toList()
              ),
            ),
          )
        ],
      ),
    );
  }
}
