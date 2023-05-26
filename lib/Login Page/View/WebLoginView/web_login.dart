import 'package:demoproject/My%20Account/Modle/myAccount.dart';
import 'package:demoproject/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WebLogin extends StatefulWidget {
  const WebLogin({Key? key}) : super(key: key);

  @override
  WebLoginState createState() => WebLoginState();
}

class WebLoginState extends State<WebLogin> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: primarycolor,
            centerTitle: true,
            title: Text(
              'LOGIN WITH SOULED STORE',
              style: TextStyle(
                  letterSpacing: 5.0,
                  fontSize: 5.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: Stack(
            children: [
              Image.network(
                'images/background.jpg',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              //Main Container
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 100),
                    height: MediaQuery.of(context).size.height,
                    width: 130.w,
                    child: Column(
                      children: [
                        Container(
                          height: 60.h,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: primarycolor.withOpacity(1)),
                          child: TabBar(
                            indicatorPadding: const EdgeInsets.all(10),
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(color: Colors.white)),
                            tabs: const [
                              Tab(
                                text: 'LOGIN',
                              ),
                              Tab(
                                text: 'REGISTER',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 530.h,
                          child: TabBarView(
                            children: [
                              //Login TAB
                              Column(
                                children: [
                                  //Text Field
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 20.h,
                                        right: 10.w,
                                        left: 10.w,
                                        top: 20.h),
                                    child: const LoginField(
                                      txt: 'Enter Phone Number',
                                    ),
                                  ),
                                  //Proceed Button
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 40.h, right: 40.w, left: 40.w),
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MyAccount()));
                                      },
                                      child: Container(
                                        height: 40.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.2),
                                                blurRadius: 5.r,
                                                spreadRadius: 2)
                                          ],
                                          color: primarycolor,
                                        ),
                                        child: Center(
                                          child: Text(
                                            'PROCEED',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 6.sp,
                                                letterSpacing: 5.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  //OR Text
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 30.h,
                                    ),
                                    child: Text(
                                      '- OR -',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 5.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 60),
                                    child: registrationbutton(),
                                  )
                                ],
                              ),

                              //Register TAB
                              Column(
                                children: [
                                  //Text Field
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 15.h,
                                        bottom: 15.h,
                                        right: 15.w,
                                        left: 15.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        RegisterTextField(
                                          txt: 'First Name',
                                        ),
                                        RegisterTextField(
                                          txt: 'Last Name',
                                        ),
                                      ],
                                    ),
                                  ),

                                  //Email TextField
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 15.w, left: 15.w, bottom: 15.h),
                                    child: const LoginField(
                                      txt: 'Email ID',
                                    ),
                                  ),
                                  //Password TextField
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 15.w, left: 15.w, bottom: 15.h),
                                    child: const LoginField(
                                      txt: 'Choose Password',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 15.w, left: 15.w, bottom: 15.h),
                                    child: const LoginField(
                                      txt: 'Confirme Password',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 15.w, left: 15.w, bottom: 15.h),
                                    child: const LoginField(
                                      txt: 'Enter Mobile Number',
                                    ),
                                  ),
                                  //Proceed Button
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 40.h, right: 15.w, left: 15.w),
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MyAccount()));
                                      },
                                      child: Container(
                                        height: 45.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.3),
                                                blurRadius: 5,
                                                spreadRadius: 2)
                                          ],
                                          color: primarycolor,
                                        ),
                                        child: Center(
                                          child: Text(
                                            'PROCEED',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 5.sp,
                                                letterSpacing: 5.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  //OR Text
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 20.h,
                                    ),
                                    child: Text(
                                      '- OR -',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 5.sp),
                                    ),
                                  ),
                                  registrationbutton()
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  Widget registrationbutton() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Facebook Login Button
          InkWell(
            onTap: () {},
            child: Image.network(
              'images/facebook.png',
              height: 50.h,
              width: 50.w,
            ),
          ),

          //Google Login Button
          InkWell(
            onTap: () {},
            child: Image.network(
              'images/google.png',
              height: 50.h,
              width: 50.w,
            ),
          ),
        ],
      );
}

class LoginField extends StatelessWidget {
  final String txt;
  const LoginField({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        keyboardType: TextInputType.number,
        maxLength: 10,
        obscureText: false,
        decoration: InputDecoration(
            counterText: '',
            contentPadding: EdgeInsets.only(
              left: 5.w,
            ),
            border: InputBorder.none,
            hintText: txt,
            hintStyle: TextStyle(color: Colors.white70, fontSize: 4.sp)),
      ),
    );
  }
}

class RegisterTextField extends StatelessWidget {
  final String txt;
  const RegisterTextField({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 205,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            fillColor: Colors.white,
            hintText: txt,
            hintStyle: const TextStyle(color: Colors.white70, fontSize: 16)),
      ),
    );
  }
}
