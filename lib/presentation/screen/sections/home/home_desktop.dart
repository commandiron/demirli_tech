import 'package:demirli_tech/presentation/screen/sections/home/widgets/section_home_base.dart';
import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionHomeBase(
      child: const Text("Home")
    );
  }
}
