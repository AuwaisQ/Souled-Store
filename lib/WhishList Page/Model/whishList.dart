import 'package:demoproject/WhishList%20Page/View/MobileWhishListView/mobileWishListPage.dart';
import 'package:demoproject/WhishList%20Page/View/WebWishlistView/webWhishlistView.dart';
import 'package:demoproject/responsive.dart';
import 'package:flutter/material.dart';

class WhishListPage extends StatelessWidget {
  const WhishListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileWishListPage(),
        tablet: WebWhishListPage(),
        desktop: WebWhishListPage());
  }
}
