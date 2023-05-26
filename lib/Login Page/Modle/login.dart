import 'package:demoproject/Login%20Page/View/MobileLoginView/mobile_login.dart';
import 'package:demoproject/Login%20Page/View/WebLoginView/web_login.dart';
import 'package:demoproject/responsive.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileLogin(), tablet: WebLogin(), desktop: WebLogin());
  }
}
