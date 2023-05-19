import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      log("Couldn't launch'");
    }
  }

  List<String> companyURL = [
    "https://www.facebook.com/support/"
        "https://www.google.com/"
        "https://www.coca-colacompany.com/"
        "https://www.samsung.com/in/"
  ];

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
        child: Column(
          children: [
            Expanded(
                child: Stack(
              children: [
                Positioned(
                    top: -20,
                    right: -20,
                    child: Container(
                        height: 320,
                        width: 320,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(vector1),
                                fit: BoxFit.contain)))),
                Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                      height: 712,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage(dashboard)))),
                ),
                // Positioned(
                //     left: -20,
                //     bottom: -20,
                //     child: Container(
                //         height: 712,
                //         width: double.infinity,
                //         decoration: BoxDecoration(
                //             image:
                //                 DecorationImage(image: AssetImage(vector2)))))
              ],
            )),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  companyLogo(fb),
                  companyLogo(google),
                  companyLogo(cocacola),
                  companyLogo(samsung)
                ],
              ),
            )
          ],
        ));
  }

  // ==============MOBILE=================

  Widget MobileContainer2(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(color: AppColors.primaryColor),
        child: Column(
          children: [
            Container(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 0),
                child: Container(
                    height: 195,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(dashboard),
                            fit: BoxFit.contain))),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  companyLogo(fb),
                  companyLogo(google),
                  companyLogo(cocacola),
                  companyLogo(samsung)
                ],
              ),
            )
          ],
        ));
  }

  Widget companyLogo(String image) {
    return GestureDetector(
      onTap: () {
        _launchURL("https://www.facebook.com/");
      },
      child: Container(
        width: 160,
        height: 36,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
      ),
    );
  }
}
