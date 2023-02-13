import 'package:demirli_tech/presentation/screen/sections/services/widgets/company_service_item.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/company_service.dart';
import '../../../configs/app_padding.dart';
import '../../../configs/app_size.dart';
import '../../widgets/section_base.dart';
import '../../widgets/section_title.dart';
import '../body_section.dart';

class ServicesMobile extends StatelessWidget {
  const ServicesMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionBase(
      height: AppSize.servicesSectionHeight!,
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Column(
        children: [
          SectionTitle(title: BodySection.services.title,),
          Expanded(
            child: Padding(
              padding: AppPadding.verticalM!,
              child: FittedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: CompanyService.items.map(
                    (companyService) {
                      return Padding(
                        padding: AppPadding.verticalS!,
                        child: CompanyServiceItem(
                          width: 300,
                          height: 300,
                          defaultColor: Theme.of(context).colorScheme.onPrimaryContainer,
                          companyService: companyService,
                        ),
                      );
                    }
                  ).toList()
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
