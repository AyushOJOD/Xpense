import 'package:flutter/material.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/widgets/common_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: DesktopContainer3,
      mobile: MobileContainer3,
    );
  }

  Widget DesktopContainer3(BuildContext context) {
    return CommonContainer(
        "Alwalys online",
        "Real-time support with cloud",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
        illustration1,
        false);
  }

  Widget MobileContainer3(BuildContext context) {
    return CommonContainerMobile(
      "Alwalys online",
      "Real-time support with cloud",
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
      illustration1,
    );
  }
}
