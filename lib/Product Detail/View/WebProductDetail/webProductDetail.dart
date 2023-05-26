import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:demoproject/Cart%20Items/Modle/cartItems.dart';
import 'package:demoproject/Login%20Page/View/WebLoginView/web_login.dart';
import 'package:demoproject/constant.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class WebProductDetail extends StatefulWidget {
  const WebProductDetail({Key? key}) : super(key: key);

  @override
  _WebProductDetailState createState() => _WebProductDetailState();
}

class _WebProductDetailState extends State<WebProductDetail> {
  final List<Widget> productimages = [
    Hero(
      tag: 1,
      child: Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1622567682_6769434.jpg?format=webp&w=480&dpr=1.3',
        height: 550,
        width: 400,
        fit: BoxFit.cover,
      ),
    ),
    Image.network(
      'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1622567700_7780083.jpg?format=webp&w=480&dpr=1.3',
      height: 550,
      width: 400,
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1622567717_8001812.jpg?format=webp&w=480&dpr=1.3',
      height: 550,
      width: 400,
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1622567727_3518726.jpg?format=webp&w=480&dpr=1.3',
      height: 550,
      width: 400,
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1613368543_5990826.jpg?format=webp&w=480&dpr=1.3',
      height: 550,
      width: 400,
      fit: BoxFit.cover,
    ),
  ];
  TextEditingController textController = TextEditingController();
  final List isHovertext = [
    false,
    false,
    false,
    false,
    false,
  ];
  final List isSizeSelect = [
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60.h,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.network(
              'images/62.png',
              height: 60.h,
              width: 15.w,
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: 5.w,
            ),
            TextButton(
                onHover: (value) {
                  setState(() {
                    value ? isHovertext[0] = true : isHovertext[0] = false;
                  });
                },
                onPressed: () {},
                child: Text('MEN',
                    style: TextStyle(
                      color: isHovertext[0] ? primarycolor : Colors.black,
                      fontSize: 5.sp,
                    ))),
            SizedBox(width: 2.w),
            TextButton(
                onHover: (value) {
                  setState(() {
                    value ? isHovertext[1] = true : isHovertext[1] = false;
                  });
                },
                onPressed: () {},
                child: Text('WOMEN',
                    style: TextStyle(
                        color: isHovertext[1] ? primarycolor : Colors.black,
                        fontSize: 5.sp))),
            SizedBox(width: 2.w),
            TextButton(
                onHover: (value) {
                  setState(() {
                    value ? isHovertext[2] = true : isHovertext[2] = false;
                  });
                },
                onPressed: () {},
                child: Text('WINTER WEAR',
                    style: TextStyle(
                        color: isHovertext[2] ? primarycolor : Colors.black,
                        fontSize: 5.sp))),
            SizedBox(width: 2.w),
            TextButton(
                onHover: (value) {
                  setState(() {
                    value ? isHovertext[3] = true : isHovertext[3] = false;
                  });
                },
                onPressed: () {},
                child: Text('SALE',
                    style: TextStyle(
                        color: isHovertext[3] ? primarycolor : Colors.black,
                        fontSize: 5.sp))),
            SizedBox(width: 2.w),
            TextButton(
                onHover: (value) {
                  setState(() {
                    value ? isHovertext[4] = true : isHovertext[4] = false;
                  });
                },
                onPressed: () {},
                child: Text('EXCLUSIVE MEMBERSHIP',
                    style: TextStyle(
                        color: isHovertext[4] ? primarycolor : Colors.black,
                        fontSize: 5.sp))),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 2.w),
            child: AnimSearchBar(
              prefixIcon: const Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
              color: primarycolor,
              style: TextStyle(color: Colors.white, fontSize: 5.sp),
              autoFocus: true,
              width: 80.w,
              textController: textController,
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 2.w),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 2.w),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 2.w),
            child: IconButton(
              onPressed: () {
                Get.to(const WebLogin());
              },
              icon: const Icon(
                Icons.person_outline,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Men\'s / Supima T-Shirt\'s / Supima Cotton Half Sleeve: Black',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: productimages,
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Supima Cotton Half Sleeve: Black',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Supima T-Shirt\'s',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 17),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '₹ 699',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Please select a size.',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            //Size Button
                            Row(
                              children: [
                                TextButton(
                                  style: ButtonStyle(
                                    splashFactory: NoSplash.splashFactory,
                                  ),
                                  // splashColor: Colors.transparent,
                                  onHover: (value) {
                                    setState(() {
                                      value
                                          ? isSizeSelect[0] = true
                                          : isSizeSelect[0] = false;
                                    });
                                  },
                                  onPressed: () {},
                                  child: Container(
                                    height: 40.h,
                                    width: 40.h,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          color: isSizeSelect[0]
                                              ? Colors.black
                                              : Colors.grey),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'S',
                                        style: TextStyle(
                                            color: isSizeSelect[0]
                                                ? Colors.black
                                                : Colors.grey,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: const ButtonStyle(
                                    splashFactory: NoSplash.splashFactory,
                                  ),
                                  // splashColor: Colors.transparent,
                                  onHover: (value) {
                                    setState(() {
                                      value
                                          ? isSizeSelect[1] = true
                                          : isSizeSelect[1] = false;
                                    });
                                  },
                                  onPressed: () {},
                                  child: Container(
                                    height: 40.h,
                                    width: 40.h,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          color: isSizeSelect[1]
                                              ? Colors.black
                                              : Colors.grey),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'M',
                                        style: TextStyle(
                                            color: isSizeSelect[1]
                                                ? Colors.black
                                                : Colors.grey,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: const ButtonStyle(
                                    splashFactory: NoSplash.splashFactory,
                                  ),
                                  // splashColor: Colors.transparent,
                                  onHover: (value) {
                                    setState(() {
                                      value
                                          ? isSizeSelect[2] = true
                                          : isSizeSelect[2] = false;
                                    });
                                  },
                                  onPressed: () {},
                                  child: Container(
                                    height: 40.h,
                                    width: 40.h,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          color: isSizeSelect[2]
                                              ? Colors.black
                                              : Colors.grey),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'L',
                                        style: TextStyle(
                                            color: isSizeSelect[2]
                                                ? Colors.black
                                                : Colors.grey,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: const ButtonStyle(
                                    splashFactory: NoSplash.splashFactory,
                                  ),
                                  // splashColor: Colors.transparent,
                                  onHover: (value) {
                                    setState(() {
                                      value
                                          ? isSizeSelect[3] = true
                                          : isSizeSelect[3] = false;
                                    });
                                  },
                                  onPressed: () {},
                                  child: Container(
                                    height: 40.h,
                                    width: 40.h,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          color: isSizeSelect[3]
                                              ? Colors.black
                                              : Colors.grey),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'XL',
                                        style: TextStyle(
                                            color: isSizeSelect[3]
                                                ? Colors.black
                                                : Colors.grey,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            quantityDropDownList(context),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(const CartItems());
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: primarycolor,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Add To Bag',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 40,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: primarycolor)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: primarycolor,
                                      ),
                                      Text(
                                        'Add To Whishlist',
                                        style: TextStyle(
                                            color: primarycolor, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 40,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.share,
                                          color: Colors.black,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Delivery Details',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 300,
                                  child: PrimaryTextField(
                                    txt: 'Enter Pincode',
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 45,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.black)),
                                  child: Center(
                                    child: Text(
                                      'Check',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            //Product Deatil
                            productDetail(context),
                            const SizedBox(height: 20),
                            productDescription(context)
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

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
                    fontSize: 20,
                  ),
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

  //Product Description
  Widget productDescription(context) => ExpandableNotifier(
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
                  "Product Description",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              collapsed: Container(),
              expanded: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    SizedBox(
                      height: 100,
                      width: 650,
                      child: Text(
                        'Official Licensed Looney Tunes Women Drop Shoulder T-Shirt.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
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

  //Product Deatil
  Widget productDetail(context) => ExpandableNotifier(
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
                  "Product Details",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              collapsed: Container(),
              expanded: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Material & Care:',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '100% Cotton',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'Machine Washable',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 650,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Manufactured & Sold By:',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'The Souled Store Pvt. Ltd. 224, Tantia Jogani Industrial Premises J.R. Boricha Marg',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'City - Mumbai',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'connect@thesouledstore.com',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
}
