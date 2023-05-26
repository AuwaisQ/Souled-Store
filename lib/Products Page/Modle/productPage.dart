import 'package:demoproject/Products%20Page/View/MobileProductPage/mobileProductView.dart';
import 'package:demoproject/Products%20Page/View/WebProductPage/webProductView.dart';
import 'package:demoproject/responsive.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileProductPage(),
        tablet: WebProductPage(),
        desktop: WebProductPage());
  }
}
