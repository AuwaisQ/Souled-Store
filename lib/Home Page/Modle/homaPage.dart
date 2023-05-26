import 'package:demoproject/Home%20Page/View/MobileHomePageView/mobile_hompage.dart';
import 'package:demoproject/Home%20Page/View/WebHomePageView/webHomepage.dart';
import 'package:demoproject/responsive.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileHomePage(),
        tablet: WebHomePage(),
        desktop: WebHomePage());
  }
}
