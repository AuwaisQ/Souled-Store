import 'package:delayed_display/delayed_display.dart';
import 'package:demoproject/My%20Account/Modle/myAccount.dart';
import 'package:demoproject/constant.dart';
import 'package:flutter/material.dart';

class MobileLogin extends StatefulWidget {
  const MobileLogin({Key? key}) : super(key: key);

  @override
  _MobileLoginState createState() => _MobileLoginState();
}

final String textFieldHintText = textFieldHintText;

class _MobileLoginState extends State<MobileLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset(
            'images/login.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'images/60.png',
              height: 150,
              width: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220, right: 10, left: 10),
            child: Column(
              children: [
                const DelayedDisplay(
                    delay: Duration(milliseconds: 500),
                    child: PrimaryTextfield(labelText: 'Enter Mobile Number')),
                const SizedBox(
                  height: 40,
                ),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 600),
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: primarycolor,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyAccount()));
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  onPressed: () {},
                ),
                SizedBox(
                  height: 50,
                ),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 800),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 90,
                        height: 2,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('OR',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 90,
                        height: 2,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DelayedDisplay(
                      delay: const Duration(milliseconds: 900),
                      slidingBeginOffset: const Offset(-5.0, 0.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            SizedBox(
                                height: 45,
                                width: 45,
                                child: Image.asset('images/facebook.png')),
                            SizedBox(height: 5),
                            const Text(
                              'Facebook',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    DelayedDisplay(
                      delay: const Duration(milliseconds: 1000),
                      slidingBeginOffset: Offset(5.0, 0.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            SizedBox(
                                height: 40,
                                width: 40,
                                child: Image.asset('images/google.png')),
                            SizedBox(height: 5),
                            Text(
                              'Google',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
