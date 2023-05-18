import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: DesktopContainer2,
      mobile: MobileContainer2,
    );
  }

  // ==============DESKTOP=================

  Widget DesktopContainer2(BuildContext context) {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primaryColor),
    );
  }

  // ==============MOBILE=================

  Widget MobileContainer2(BuildContext context) {
    return Container();
  }
}
