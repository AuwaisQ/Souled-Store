import 'package:demoproject/Cart%20Items/View/MobileCartItmesPage/mobileCartItems.dart';
import 'package:demoproject/Cart%20Items/View/WebCartItemsPage/webCartItems.dart';
import 'package:demoproject/responsive.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileCartItems(),
        tablet: WebCartitmes(),
        desktop: WebCartitmes());
  }
}
