import 'package:demirli_tech/presentation/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../data/model/company_service.dart';
import '../../../../configs/app_padding.dart';
import '../../../../configs/app_space.dart';
import '../../../../configs/app_text_style.dart';

class CompanyServiceItem extends StatefulWidget {
  const CompanyServiceItem(
    {
      required this.width,
      required this.height,
      required this.defaultColor,
      required this.companyService,
      this.onHoverAnimationEnabled = true,
      Key? key
    }
  ) : super(key: key);

  final double width;
  final double height;
  final Color defaultColor;
  final CompanyService companyService;
  final bool onHoverAnimationEnabled;

  @override
  State<CompanyServiceItem> createState() => _CompanyServiceItemState();
}

class _CompanyServiceItemState extends State<CompanyServiceItem> {

  late Color _textColor = widget.defaultColor;
  late List<Color> _iconColorList = widget.onHoverAnimationEnabled
    ? [widget.defaultColor, widget.defaultColor]
    : widget.companyService.highlightedIconColorList;
  double _cardElevation = 0;
  double _frameColorOpacity = 0.5;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<AppCubit>(context, listen: false).scroll(4);
      },
      onHover: (value) {
        if(widget.onHoverAnimationEnabled) {
          // setState(() {
          //   if (value) {
          //     _textColor = Theme.of(context).colorScheme.primary;
          //     _iconColorList = widget.companyService.highlightedIconColorList;
          //     _cardElevation = 20.0;
          //     _frameColorOpacity = 1.0;
          //   } else {
          //     _textColor = widget.defaultColor;
          //     _iconColorList = [widget.defaultColor, widget.defaultColor];
          //     _cardElevation = 0;
          //     _frameColorOpacity = 0.5;
          //   }
          // });
        }
      },
      child: Card(
        color: Theme.of(context).colorScheme.secondaryContainer,
        elevation: _cardElevation,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary.withOpacity(_frameColorOpacity)
          )
        ),
        child: Container(
          alignment: Alignment.center,
          width: widget.width,
          height: widget.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppSpace.verticalL!,
              Container(
                padding: AppPadding.horizontalL,
                alignment: Alignment.topCenter,
                child: FittedBox(
                  child: Text(
                    widget.companyService.title,
                    style: AppTextStyle.h2?.copyWith(color: _textColor),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: FractionallySizedBox(
                    widthFactor: 0.40,
                    child: ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: _iconColorList,
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: Image.asset(
                        widget.companyService.logoAssetPath,
                      ),
                    )
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
