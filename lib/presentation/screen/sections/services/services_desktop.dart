import 'package:demirli_tech/presentation/screen/sections/services/widgets/company_service_item.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/company_service.dart';
import '../../../configs/app_padding.dart';
import '../../../configs/app_size.dart';
import '../../widgets/section_base.dart';
import '../../widgets/section_title.dart';
import '../body_section.dart';

class ServicesDesktop extends StatelessWidget {
  const ServicesDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionBase(
      height: AppSize.servicesSectionHeight!,
      child: Column(
        children: [
          SectionTitle(title: BodySection.services.title,),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: CompanyService.items.map(
                (companyService) {
                  return Padding(
                    padding: AppPadding.allL!,
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
          )
        ],
      ),
    );
  }
}
