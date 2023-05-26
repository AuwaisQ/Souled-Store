import 'package:demoproject/My%20Account/View/MobileAccountView/mobileMyAccount.dart';
import 'package:demoproject/My%20Account/View/WebAccountView/webAccountPage.dart';
import 'package:demoproject/responsive.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileMyAcount(),
        tablet: WebAccountPage(),
        desktop: WebAccountPage());
  }
}
