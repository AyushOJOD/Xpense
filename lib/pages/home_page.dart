import 'package:flutter/material.dart';
import 'package:flutter_web/pages/conatiners/conatiner2.dart';
import 'package:flutter_web/pages/conatiners/container1.dart';
import 'package:flutter_web/pages/conatiners/container3.dart';
import 'package:flutter_web/pages/conatiners/container4.dart';
import 'package:flutter_web/pages/conatiners/container5.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/widgets/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            NavBar(),
            Container1(),
            Container2(),
            Container3(),
            Container4(),
            Container5()
          ],
        ),
      )),
    );
  }
}
