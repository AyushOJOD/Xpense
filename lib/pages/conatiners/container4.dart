import 'package:flutter/material.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/widgets/common_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: DesktopContainer4,
      mobile: MobileContainer,
    );
  }

  Widget DesktopContainer4(BuildContext context) {
    return CommonContainer(
        "free some cost",
        "Save cost for you and family",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
        illustration2,
        true);
  }

  Widget MobileContainer(BuildContext context) {
    return CommonContainerMobile(
        "free some cost",
        "Save cost for you and family",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
        illustration2);
  }
}
