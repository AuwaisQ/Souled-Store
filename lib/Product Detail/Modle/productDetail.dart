import 'package:demoproject/Product%20Detail/View/MobileProductDetail/mobileProductdetail.dart';
import 'package:demoproject/Product%20Detail/View/WebProductDetail/webProductDetail.dart';
import 'package:demoproject/responsive.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileProductDetail(),
        tablet: WebProductDetail(),
        desktop: WebProductDetail());
  }
}
