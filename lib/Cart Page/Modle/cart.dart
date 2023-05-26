import 'package:demoproject/Cart%20Page/View/MobileCartPageView/MobileCartView.dart';
import 'package:demoproject/Cart%20Page/View/WebCartPageView/webCartView.dart';
import 'package:demoproject/responsive.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileCartPage(),
        tablet: WebCartPage(),
        desktop: WebCartPage());
  }
}
