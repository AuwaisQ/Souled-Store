import 'package:delayed_display/delayed_display.dart';
import 'package:demoproject/constant.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WebCartitmes extends StatefulWidget {
  const WebCartitmes({Key? key}) : super(key: key);

  @override
  _WebCartitmesState createState() => _WebCartitmesState();
}

class _WebCartitmesState extends State<WebCartitmes> {
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
        toolbarHeight: 50,
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
                height: 50,
                width: 120,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: DelayedDisplay(
          delay: const Duration(milliseconds: 400),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5))),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    addAddress(context),
                                    const Divider(
                                      color: Colors.grey,
                                      thickness: 1,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1622567682_6769434.jpg?format=webp&w=480&dpr=1.3',
                                              height: 250,
                                              width: 200,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: const [
                                                  Text(
                                                      'Supima Cotton Half Sleeve: Black',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text('₹ 699',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text('Supima T-Shirts',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13,
                                                  )),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 150,
                                                    child: quantityDropDownList(
                                                        context),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  SizedBox(
                                                      width: 150,
                                                      child: sizeDropDownList(
                                                          context)),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              border: Border.all(
                                                  color: Colors.grey)),
                                          child: const Center(
                                            child: Text('Remove',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 400,
                                          decoration: BoxDecoration(
                                            color: primarycolor,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: const Center(
                                            child: Text('Add TO Wishlist',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: applyCoupon(context)),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: giftVaoucher(context)),
                            SizedBox(
                              height: 20,
                            ),
                            Text('BILLING DETAILS',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 20)),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('Cart Total',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20)),
                                        Divider(
                                          color: Colors.grey,
                                        ),
                                        Text('₹ 699',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20)),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('GST',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20)),
                                        Divider(
                                          color: Colors.grey,
                                        ),
                                        Text('₹ 34.90',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20)),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('Shipping Charges',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20)),
                                        Divider(
                                          color: Colors.grey,
                                        ),
                                        Text('₹ 0',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20)),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('Total Payable',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        Divider(
                                          color: Colors.grey,
                                        ),
                                        Text('₹ 733',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: primarycolor,
                              ),
                              child: const Center(
                                child: Text('PLACE ORDER',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              footerView()
            ],
          ),
        )),
      ),
    );
  }

  //FooterView
  Widget footerView() => Container(
        height: 300.h,
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

  //Coupon Drop Drown List
  Widget applyCoupon(context) => ExpandableNotifier(
          child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                iconColor: Colors.black,
                iconSize: 27,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: Padding(
                padding: EdgeInsets.all(6.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.receipt_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Apply Coupon",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              collapsed: Container(),
              expanded: ApplyCoupon(txt: 'Apply Coupon Code'),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ));

  //Gift Voucher Drop Drown List
  Widget giftVaoucher(context) => ExpandableNotifier(
          child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                iconColor: Colors.black,
                iconSize: 27,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: Padding(
                padding: EdgeInsets.all(6.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.receipt_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Gift Voucher",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              collapsed: Container(),
              expanded: ApplyCoupon(txt: 'Apply Coupon Code'),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ));

  //Size Drop Drown List
  Widget sizeDropDownList(context) => ExpandableNotifier(
          child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                iconColor: Colors.black,
                iconSize: 27,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: const Padding(
                padding: EdgeInsets.all(6.0),
                child: Text(
                  "Size",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              collapsed: Container(),
              expanded: SingleChildScrollView(
                child: Column(
                  children: const [
                    Text('S',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text('M',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text('L',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text('XL',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text('XXL',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ));

  //Quantity Drop Drown List
  Widget quantityDropDownList(context) => ExpandableNotifier(
          child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                iconColor: Colors.black,
                iconSize: 27,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: const Padding(
                padding: EdgeInsets.all(6.0),
                child: Text(
                  "Quantity",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              collapsed: Container(),
              expanded: Column(
                children: const [
                  Text('1',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text('2',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text('3',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text('4',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text('5',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ));

  //GIFT VOUCHER
  Widget addAddress(context) => ExpandableNotifier(
          child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: true,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                iconColor: Colors.black,
                iconSize: 27,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: const Padding(
                padding: EdgeInsets.all(6.0),
                child: Text(
                  "Add Address",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              collapsed: Container(),
              expanded: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      EnterNameTextField(
                        txt: 'Enter Full name',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      HouseName(
                          txt: 'Enter House No., Building Name, Street,Area'),
                      SizedBox(
                        height: 20,
                      ),
                      EnterCity(txt: 'Enter City Name'),
                      SizedBox(
                        height: 20,
                      ),
                      PhoneNumberTextField(txt: 'Enter Phone Number'),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(color: Colors.grey)),
                            child: const Center(
                              child: Text('Cancle',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20)),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              color: primarycolor,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: const Center(
                              child: Text('Save',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              builder: (_, collapsed, expanded) {
                return Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                  theme: const ExpandableThemeData(crossFadePoint: 0),
                );
              },
            ),
          ),
        ],
      ));
}

class GiftVoucher extends StatelessWidget {
  final String txt;
  const GiftVoucher({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            border: Border.all(color: Colors.white, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            style: const TextStyle(color: Colors.black),
            keyboardType: TextInputType.number,
            obscureText: false,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20),
                border: InputBorder.none,
                fillColor: Colors.black,
                hintText: txt,
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
          ),
        ),
        Container(
          height: 45,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: primarycolor,
          ),
          child: Center(
            child: Text(
              "Apply",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ApplyCoupon extends StatelessWidget {
  final String txt;
  const ApplyCoupon({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            border: Border.all(color: Colors.white, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            style: const TextStyle(color: Colors.black),
            keyboardType: TextInputType.number,
            obscureText: false,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20),
                border: InputBorder.none,
                fillColor: Colors.black,
                hintText: txt,
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
          ),
        ),
        Container(
          height: 45,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: primarycolor,
          ),
          child: Center(
            child: Text(
              "Apply",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class EnterNameTextField extends StatelessWidget {
  final String txt;
  const EnterNameTextField({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            fillColor: Colors.black,
            hintText: txt,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
      ),
    );
  }
}

class HouseName extends StatelessWidget {
  final String txt;
  const HouseName({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            fillColor: Colors.black,
            hintText: txt,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
      ),
    );
  }
}

class LandMark extends StatelessWidget {
  final String txt;
  const LandMark({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            fillColor: Colors.black,
            hintText: txt,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
      ),
    );
  }
}

class EnterState extends StatelessWidget {
  final String txt;
  const EnterState({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            fillColor: Colors.black,
            hintText: txt,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
      ),
    );
  }
}

class EnterCity extends StatelessWidget {
  final String txt;
  const EnterCity({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            fillColor: Colors.black,
            hintText: txt,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
      ),
    );
  }
}

class PhoneNumberTextField extends StatelessWidget {
  final String txt;
  const PhoneNumberTextField({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            fillColor: Colors.black,
            hintText: txt,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
      ),
    );
  }
}
