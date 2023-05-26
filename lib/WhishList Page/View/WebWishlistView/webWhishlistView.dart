import 'package:delayed_display/delayed_display.dart';
import 'package:demoproject/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WebWhishListPage extends StatefulWidget {
  const WebWhishListPage({Key? key}) : super(key: key);

  @override
  WebWhishListPageState createState() => WebWhishListPageState();
}

class WebWhishListPageState extends State<WebWhishListPage> {
  TextStyle headerStyle = TextStyle(
      color: primarycolor, fontSize: 5.sp, fontWeight: FontWeight.bold);
  final List footerText = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50.h,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: DelayedDisplay(
          delay: const Duration(milliseconds: 300),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 25,
              )),
        ),
        title: DelayedDisplay(
          delay: const Duration(milliseconds: 350),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'images/61.png',
                height: 45.h,
                width: 45.w,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 400),
                  child: Image.asset(
                    'images/whishlist.png',
                    height: 300.h,
                    width: 300.w,
                    // fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const DelayedDisplay(
                  delay: Duration(milliseconds: 500),
                  child: Text(
                    'Your wishlist is lonely and looking for love.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const DelayedDisplay(
                  delay: Duration(milliseconds: 500),
                  child: Text(
                    'Add products to your wishlist, review them anytime and easily move to cart.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 40,
                ),
                DelayedDisplay(
                    delay: const Duration(milliseconds: 900),
                    child: footerView()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //FooterView
  Widget footerView() => Container(
        height: 270.h,
        width: double.infinity,
        color: Colors.grey.withOpacity(0.3),
        child: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Need help
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NEED HELP',
                    style: headerStyle,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value ? footerText[0] = true : footerText[0] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('Contact Us',
                          style: TextStyle(
                            color: footerText[0] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value ? footerText[1] = true : footerText[1] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('Track Order',
                          style: TextStyle(
                            color: footerText[1] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value ? footerText[2] = true : footerText[2] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('Return & Refunds',
                          style: TextStyle(
                            color: footerText[2] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value ? footerText[3] = true : footerText[3] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('FAQ\'s',
                          style: TextStyle(
                            color: footerText[3] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value ? footerText[4] = true : footerText[4] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('My Account',
                          style: TextStyle(
                            color: footerText[4] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                ],
              ),

              //Company Coloumn
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'COMPANY',
                    style: headerStyle,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value ? footerText[5] = true : footerText[5] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('About Us',
                          style: TextStyle(
                            color: footerText[5] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value ? footerText[6] = true : footerText[6] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('Careers',
                          style: TextStyle(
                            color: footerText[6] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value ? footerText[7] = true : footerText[7] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('Store Near me',
                          style: TextStyle(
                            color: footerText[7] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value ? footerText[8] = true : footerText[8] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('Gift Vouchers',
                          style: TextStyle(
                            color: footerText[8] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value ? footerText[9] = true : footerText[9] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('Souled Army',
                          style: TextStyle(
                            color: footerText[9] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value
                              ? footerText[10] = true
                              : footerText[10] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('From The Soul',
                          style: TextStyle(
                            color: footerText[10] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                ],
              ),
              //Need help
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MORE INFO',
                    style: headerStyle,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value
                              ? footerText[11] = true
                              : footerText[11] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('T&C',
                          style: TextStyle(
                            color: footerText[11] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value
                              ? footerText[12] = true
                              : footerText[12] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('Privacy Policy',
                          style: TextStyle(
                            color: footerText[12] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextButton(
                      onHover: (value) {
                        setState(() {
                          value
                              ? footerText[13] = true
                              : footerText[13] = false;
                        });
                      },
                      onPressed: () {},
                      child: Text('Sitemap',
                          style: TextStyle(
                            color: footerText[13] ? primarycolor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.sp,
                          ))),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.network(
                        'images/rupee.png',
                        height: 20.h,
                        width: 10.w,
                        color: Colors.grey.shade800,
                      ),
                      Text(
                        'COD Available',
                        style: TextStyle(
                            color: Colors.grey.shade800, fontSize: 3.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Row(
                    children: [
                      Image.network(
                        'images/return.png',
                        height: 20.h,
                        width: 10.w,
                        color: Colors.grey.shade800,
                      ),
                      Text(
                        '30 Day\'s Easy Return',
                        style: TextStyle(
                            color: Colors.grey.shade800, fontSize: 3.sp),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
}

class PopularCatgories extends StatefulWidget {
  final String text;
  const PopularCatgories({Key? key, required this.text}) : super(key: key);

  @override
  _PopularCatgoriesState createState() => _PopularCatgoriesState();
}

class _PopularCatgoriesState extends State<PopularCatgories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(width: 2.0, color: Colors.grey),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
