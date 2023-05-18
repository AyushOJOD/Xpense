import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: MobileNavBar,
      desktop: DesktopNavBar,
    );
  }

// ==============MOBILE=================

  Widget MobileNavBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(Icons.menu), navLogo()],
      ),
    );
  }

  // ==============DESKTOP=================

  Widget DesktopNavBar(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 70,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          navLogo(),
          Row(
            children: [
              NavButton("Faetures"),
              NavButton("About Us"),
              NavButton("Pricing"),
              NavButton("Feedback"),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borderButtonStyle,
              onPressed: () {},
              child: Text(
                "Request a demo",
                style: TextStyle(color: AppColors.primaryColor),
              ),
            ),
          )
        ]));
  }

  Widget NavButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 110,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(logo))),
    );
  }
}
