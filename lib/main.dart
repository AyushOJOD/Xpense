import 'package:flutter/material.dart';
import 'package:flutter_web/pages/home_page.dart';
import 'package:flutter_web/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xpense ',
      theme: ThemeData(
          fontFamily: 'HindSiliguri',
          brightness: Brightness.light,
          primaryColor: AppColors.primaryColor),
      home: HomePage(),
    );
  }
}
