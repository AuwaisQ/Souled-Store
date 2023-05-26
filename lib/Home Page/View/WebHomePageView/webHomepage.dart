import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:demoproject/Cart%20Page/Modle/cart.dart';
import 'package:demoproject/Home%20Page/View/WebHomePageView/images.dart';
import 'package:demoproject/Home%20Page/View/WebHomePageView/categorySlider.dart';
import 'package:demoproject/Home%20Page/View/WebHomePageView/official_merchandise_slider_view.dart';
import 'package:demoproject/Home%20Page/View/WebHomePageView/steal_deal_slider_view.dart';
import 'package:demoproject/Home%20Page/View/WebHomePageView/top_selling_view.dart';
import 'package:demoproject/WhishList%20Page/View/WebWishlistView/webWhishlistView.dart';
import 'package:demoproject/Login%20Page/Modle/login.dart';
import 'package:demoproject/Products%20Page/Modle/productPage.dart';
import 'package:demoproject/constant.dart';
import 'package:demoproject/megaMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:quds_popup_menu/quds_popup_menu.dart';

class WebHomePage extends StatefulWidget {
  const WebHomePage({Key? key}) : super(key: key);

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

TextEditingController textController = TextEditingController();

class _WebHomePageState extends State<WebHomePage> {
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
  final List isHovertext = [
    false,
    false,
    false,
    false,
    false,
  ];
  final List isHoverimg = [
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
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.h,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.network(
              'images/61.png',
              height: 55.h,
              width: 40.w,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 5.w,),
            menMenu(context),
            SizedBox(width: 5.w,),
            womenMenu(context),
            SizedBox(width: 5.w,),
            winterWear(context),
            SizedBox(width: 5.w,),
            sale(context),
            SizedBox(width: 5.w,),
            Text('EXCLUSIVE MEMBERSHIP',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 5.sp,
                ))
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
              onPressed: () {
                Get.to(const WebWhishListPage());
              },
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
              onPressed: () {
                Get.to(const CartPage());
              },
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
                Get.to(const Login());
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Carousel Slider
                const DelayedDisplay(
                    delay: Duration(milliseconds: 400),
                    child: CategorySldier()),
                SizedBox(
                  height: 20.h,
                ),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 500),
                  child: Text(
                    'CATOGORIES',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 7.sp,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                //CATOGORIES ROW
                DelayedDisplay(
                    delay: Duration(milliseconds: 500),
                    child: categoryImagesview()),
                SizedBox(
                  height: 20.h,
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 600),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'images/fire.png',
                        height: 25.h,
                        width: 7.w,
                      ),
                      Text(
                        'STEAL DEALS',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 7.sp,
                            letterSpacing: 3.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                //Steal deal Slider
                const DelayedDisplay(
                    delay: Duration(milliseconds: 600),
                    child: StealDealSliderview()),
                SizedBox(
                  height: 20.h,
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 700),
                  child: Text(
                    'OFFICIAL MERCHANDISE',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 7.sp,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                DelayedDisplay(
                    delay: Duration(milliseconds: 700),
                    child: const OfficialMerchandiceSliderView()),
                SizedBox(
                  height: 20.h,
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 800),
                  child: Text(
                    'TOP SELLING',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 7.sp,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                DelayedDisplay(
                    delay: Duration(milliseconds: 800),
                    child: const TopSellingSliderview()),
                SizedBox(
                  height: 20.h,
                ),
                Image.network(
                  'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/banner-images/ex_knSvGHP.jpg?format=webp&w=1500&dpr=1.3',
                  fit: BoxFit.cover,
                  height: 350.h,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 60.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: primarycolor,
                  ),
                  child: Center(
                    child: Text(
                      'MAKE IN INDIA',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 8.sp,
                          letterSpacing: 3),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Over 3 Million Happy Customer',
                  style: TextStyle(fontSize: 12.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),
                footerView(),
              ],
            ),
          ),
        ),
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
  //Categories Images Views
  Widget categoryImagesview() => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Image 1
              TextButton(
                onHover: (val) {
                  setState(() {
                    val ? isHoverimg[0] = true : isHoverimg[0] = false;
                  });
                },
                onPressed: () {
                  Get.to(const ProductPage());
                },
                child: SizedBox(
                  height: 500.h,
                  width: 110.w,
                  child: Padding(
                    padding: isHoverimg[0]
                        ? const EdgeInsets.all(7.0)
                        : const EdgeInsets.all(0.0),
                    child: categoriesImages[0],
                  ),
                ),
              ),
              //Image 2
              TextButton(
                onHover: (val) {
                  setState(() {
                    val ? isHoverimg[1] = true : isHoverimg[1] = false;
                  });
                },
                onPressed: () {},
                child: SizedBox(
                  height: 500.h,
                  width: 110.w,
                  child: Padding(
                    padding: isHoverimg[1]
                        ? const EdgeInsets.all(7.0)
                        : const EdgeInsets.all(0.0),
                    child: categoriesImages[1],
                  ),
                ),
              ),
              //Image 3
              TextButton(
                onHover: (val) {
                  setState(() {
                    val ? isHoverimg[2] = true : isHoverimg[2] = false;
                  });
                },
                onPressed: () {},
                child: SizedBox(
                  height: 500.h,
                  width: 110.w,
                  child: Padding(
                    padding: isHoverimg[2]
                        ? const EdgeInsets.all(7.0)
                        : const EdgeInsets.all(0.0),
                    child: categoriesImages[2],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          //CATOGORIES ROW 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Image 1
              TextButton(
                onHover: (val) {
                  setState(() {
                    val ? isHoverimg[3] = true : isHoverimg[3] = false;
                  });
                },
                onPressed: () {},
                child: SizedBox(
                  height: 300.h,
                  width: 160.w,
                  child: Padding(
                    padding: isHoverimg[3]
                        ? const EdgeInsets.all(7.0)
                        : const EdgeInsets.all(0.0),
                    child: categoriesImages[3],
                  ),
                ),
              ),
              //Image 2
              TextButton(
                onHover: (val) {
                  setState(() {
                    val ? isHoverimg[4] = true : isHoverimg[4] = false;
                  });
                },
                onPressed: () {},
                child: SizedBox(
                  height: 300.h,
                  width: 85.w,
                  child: Padding(
                    padding: isHoverimg[4]
                        ? const EdgeInsets.all(7.0)
                        : const EdgeInsets.all(0.0),
                    child: categoriesImages[4],
                  ),
                ),
              ),
              //Image 3
              TextButton(
                onHover: (val) {
                  setState(() {
                    val ? isHoverimg[5] = true : isHoverimg[5] = false;
                  });
                },
                onPressed: () {},
                child: SizedBox(
                  height: 300.h,
                  width: 85.w,
                  child: Padding(
                    padding: isHoverimg[5]
                        ? const EdgeInsets.all(7.0)
                        : const EdgeInsets.all(0.0),
                    child: categoriesImages[5],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          //CATOGORIES ROW 3
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Image 1
              TextButton(
                onHover: (val) {
                  setState(() {
                    val ? isHoverimg[6] = true : isHoverimg[6] = false;
                  });
                },
                onPressed: () {},
                child: SizedBox(
                  height: 300.h,
                  width: 85.w,
                  child: Padding(
                    padding: isHoverimg[6]
                        ? const EdgeInsets.all(7.0)
                        : const EdgeInsets.all(0.0),
                    child: categoriesImages[6],
                  ),
                ),
              ),
              //Image 2
              TextButton(
                onHover: (val) {
                  setState(() {
                    val ? isHoverimg[7] = true : isHoverimg[7] = false;
                  });
                },
                onPressed: () {},
                child: SizedBox(
                  height: 300.h,
                  width: 85.w,
                  child: Padding(
                    padding: isHoverimg[7]
                        ? const EdgeInsets.all(7.0)
                        : const EdgeInsets.all(0.0),
                    child: categoriesImages[7],
                  ),
                ),
              ),

              ///Image 3
              TextButton(
                onHover: (val) {
                  setState(() {
                    val ? isHoverimg[8] = true : isHoverimg[8] = false;
                  });
                },
                onPressed: () {},
                child: SizedBox(
                  height: 300.h,
                  width: 160.w,
                  child: Padding(
                    padding: isHoverimg[8]
                        ? const EdgeInsets.all(7.0)
                        : const EdgeInsets.all(0.0),
                    child: categoriesImages[8],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          //CATOGORIES ROW 4
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Image 1
              TextButton(
                onHover: (val) {
                  setState(() {
                    val ? isHoverimg[9] = true : isHoverimg[9] = false;
                  });
                },
                onPressed: () {},
                child: SizedBox(
                  height: 290.h,
                  width: 80.w,
                  child: Padding(
                    padding: isHoverimg[9]
                        ? const EdgeInsets.all(7.0)
                        : const EdgeInsets.all(0.0),
                    child: categoriesImages[9],
                  ),
                ),
              ),
              //Image 2
              TextButton(
                onHover: (val) {
                  setState(() {
                    val ? isHoverimg[10] = true : isHoverimg[10] = false;
                  });
                },
                onPressed: () {},
                child: SizedBox(
                  height: 290.h,
                  width: 80.w,
                  child: Padding(
                    padding: isHoverimg[10]
                        ? const EdgeInsets.all(7.0)
                        : const EdgeInsets.all(0.0),
                    child: categoriesImages[10],
                  ),
                ),
              ),
              //Image 3
              TextButton(
                onHover: (val) {
                  setState(() {
                    val ? isHoverimg[11] = true : isHoverimg[11] = false;
                  });
                },
                onPressed: () {},
                child: SizedBox(
                  height: 290.h,
                  width: 80.w,
                  child: Padding(
                    padding: isHoverimg[11]
                        ? const EdgeInsets.all(7.0)
                        : const EdgeInsets.all(0.0),
                    child: categoriesImages[11],
                  ),
                ),
              ),
              //Image 4
              TextButton(
                onHover: (val) {
                  setState(() {
                    val ? isHoverimg[12] = true : isHoverimg[12] = false;
                  });
                },
                onPressed: () {},
                child: SizedBox(
                  height: 290.h,
                  width: 80.w,
                  child: Padding(
                    padding: isHoverimg[12]
                        ? const EdgeInsets.all(7.0)
                        : const EdgeInsets.all(0.0),
                    child: categoriesImages[12],
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  Widget menMenu(context) => QudsPopupButton(
      items: menMenuItems(),
      child:Text('MEN',
          style: TextStyle(
            color: Colors.black,

            fontFamily: 'Poppins',
            fontSize: 5.sp,
          )));
  List<QudsPopupMenuBase> menMenuItems() {
    return [
      ///Topwear Section
      QudsPopupMenuSection(
          titleText: 'TOPWEAR MEN',
          subItems: [
            QudsPopupMenuItem(
                title: Text('T-Shirt\'S'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Co-Ord Set'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Polos'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Jackets'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Tank Tops'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Language'),
                onPressed: () {}),
          ]),
      QudsPopupMenuDivider(),
      ///Bottomwear Section
      QudsPopupMenuSection(
          titleText: 'BOTTOMWEAR MEN',
          subItems: [
            QudsPopupMenuItem(
                title: Text('Cotton Pants'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Joggers'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Pajamas'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Shorts'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Boxers'),
                onPressed: () {}),
          ]),

      QudsPopupMenuDivider(),
      ///Accesories
      QudsPopupMenuSection(
          titleText: 'ACCESSORIES MEN',
          subItems: [
            QudsPopupMenuItem(
                title: Text('Cotton Masks'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Socks'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('BackPacks'),
                onPressed: () {}),
          ]),
    ];
  }

  Widget womenMenu(context) => QudsPopupButton(
      items: womenMenuItem(),
      child:Text('WOMEN',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontSize: 5.sp,
          )));
  List<QudsPopupMenuBase> womenMenuItem() {
    return [
      ///Topwear Section
      QudsPopupMenuSection(
          titleText: 'TOPWEAR WOMEN',
          subItems: [
            QudsPopupMenuItem(
                title: Text('T-Shirt\'S'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Co-Ord Set'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Polos'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Jackets'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Tank Tops'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Language'),
                onPressed: () {}),
          ]),
      QudsPopupMenuDivider(),
      ///Bottomwear Section
      QudsPopupMenuSection(
          titleText: 'BOTTOMWEAR WOMEN',
          subItems: [
            QudsPopupMenuItem(
                title: Text('Cotton Pants'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Joggers'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Pajamas'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Shorts'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Boxers'),
                onPressed: () {}),
          ]),

      QudsPopupMenuDivider(),
      ///Accesories
      QudsPopupMenuSection(
          titleText: 'ACCESSORIES WOMEN',
          subItems: [
            QudsPopupMenuItem(
                title: Text('Cotton Masks'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('Socks'),
                onPressed: () {}),
            QudsPopupMenuItem(
                title: Text('BackPacks'),
                onPressed: () {}),
          ]),
    ];
  }

  ///WinterWear
  Widget winterWear(context) => QudsPopupButton(
      items: winterWearItem(),
      child:Text('WINTER WEAR',
          style: TextStyle(
            color: Colors.black,

            fontFamily: 'Poppins',
            fontSize: 5.sp,
          )));
  List<QudsPopupMenuBase> winterWearItem() {
    return [
      ///Topwear Section
      QudsPopupMenuItem(
          title: const Text('MEN'),
          onPressed: () {}),
      QudsPopupMenuDivider(),
      ///Bottomwear Section
      QudsPopupMenuItem(
          title: const Text('WOMEN'),
          onPressed: () {}),
    ];
  }

  ///Sale
  Widget sale(context) => QudsPopupButton(
      items: saleItem(),
      child:Text('SALE',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontSize: 5.sp,
          )));
  List<QudsPopupMenuBase> saleItem() {
    return [
      ///Topwear Section
      QudsPopupMenuItem(
          title: const Text('MEN'),
          onPressed: () {}),
      QudsPopupMenuDivider(),
      ///Bottomwear Section
      QudsPopupMenuItem(
          title: const Text('WOMEN'),
          onPressed: () {}),
    ];
  }
}
