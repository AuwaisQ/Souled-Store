import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:demoproject/Cart%20Page/Modle/cart.dart';
import 'package:demoproject/Login%20Page/Modle/login.dart';
import 'package:demoproject/Product%20Detail/Modle/productDetail.dart';
import 'package:demoproject/WhishList%20Page/View/WebWishlistView/webWhishlistView.dart';
import 'package:demoproject/constant.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quds_popup_menu/quds_popup_menu.dart';

class WebProductPage extends StatefulWidget {
  const WebProductPage({Key? key}) : super(key: key);

  @override
  _WebProductPageState createState() => _WebProductPageState();
}

TextEditingController textController = TextEditingController();

class _WebProductPageState extends State<WebProductPage> {
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
  ];
  @override
  Widget build(BuildContext context) {
    TextStyle headlineStyle = TextStyle(
        color: Colors.black, fontSize: 4.sp, fontWeight: FontWeight.bold);
    TextStyle headline2Style = TextStyle(color: Colors.grey, fontSize: 3.sp);
    TextStyle priceStyle = TextStyle(color: Colors.black, fontSize: 4.sp);
    //Steal Deal Slider Images
    final List<Widget> productImages = [
      //Image 1
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onHover: (val) {
              setState(() {
                val ? isHoverimg[0] = true : isHoverimg[0] = false;
              });
            },
            onTap: () {
              Get.to(const ProductDetail(),
                  duration: Duration(milliseconds: 700));
            },
            child: Hero(
              tag: 1,
              child: Image.network(
                isHoverimg[0]
                    ? 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1622567682_6769434.jpg?format=webp&w=480&dpr=1.3'
                    : 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1622567717_8001812.jpg?format=webp&w=480&dpr=1.3',
                fit: BoxFit.cover,
                width: 65.w,
                height: 300.h,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Tie-Die: Superman Logo Set',
            style: headlineStyle,
          ),
          Text(
            'Mens\'s Co-Ord Set',
            style: headline2Style,
          ),
          Text(
            '₹ 1190',
            style: priceStyle,
          ),
        ],
      ),
      //Image 2
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1644237813_1083830.gif?format=webp&w=480&dpr=1.3',
            width: 65.w,
            height: 300.h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            'Peanuts: Snoopy Varsity Jacket',
            style: headlineStyle,
          ),
          Text(
            'Women\'s Jackets',
            style: headline2Style,
          ),
          Text(
            '₹ 1349',
            style: priceStyle,
          ),
        ],
      ),
      //Image 3
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1644237415_9144174.gif?format=webp&w=480&dpr=1.3',
            fit: BoxFit.cover,
            height: 300.h,
            width: 65.w,
          ),
          SizedBox(height: 10),
          Text(
            'Avengers: Denim Jacket',
            style: headlineStyle,
          ),
          Text(
            'Mens\'s Denim Jackets',
            style: headline2Style,
          ),
          Text(
            '₹ 1649',
            style: priceStyle,
          ),
        ],
      ),
      //Image 4
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/SpongeBob-Pattern-Pajama-Set-top-selling-tile_1.jpg?format=webp&w=360&dpr=1.3',
            fit: BoxFit.cover,
            height: 300.h,
            width: 65.w,
          ),
          SizedBox(height: 10),
          Text(
            'Sponge Bob: Pattern Set',
            style: headlineStyle,
          ),
          Text(
            'Night Suit\'s',
            style: headline2Style,
          ),
          Text(
            '₹ 1199',
            style: priceStyle,
          ),
        ],
      ),
      //Image 5
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/Top-selling-tile--Deadpool-Jacket.jpg?format=webp&w=360&dpr=1.3',
            fit: BoxFit.cover,
            height: 300.h,
            width: 65.w,
          ),
          SizedBox(height: 10),
          Text(
            'Deadpool: Face',
            style: headlineStyle,
          ),
          Text(
            'Jackets',
            style: headline2Style,
          ),
          Text(
            '₹ 1990',
            style: priceStyle,
          ),
        ],
      ),
      //Image 6
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1642605839_4160223.jpg?format=webp&w=480&dpr=1.3',
            fit: BoxFit.cover,
            height: 300.h,
            width: 65.w,
          ),
          SizedBox(height: 10),
          Text(
            'Harry Potter: Doole',
            style: headlineStyle,
          ),
          Text(
            'Women\'s Shirts',
            style: headline2Style,
          ),
          Text(
            '₹ 899',
            style: priceStyle,
          ),
        ],
      ),

      //Image 1
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onHover: (val) {
              setState(() {
                val ? isHoverimg[0] = true : isHoverimg[0] = false;
              });
            },
            onTap: () {},
            child: Image.network(
              'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1622567717_8001812.jpg?format=webp&w=480&dpr=1.3',
              fit: BoxFit.cover,
              width: 65.w,
              height: 300.h,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Tie-Die: Superman Logo Set',
            style: headlineStyle,
          ),
          Text(
            'Mens\'s Co-Ord Set',
            style: headline2Style,
          ),
          Text(
            '₹ 1190',
            style: priceStyle,
          ),
        ],
      ),
      //Image 2
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/154topsellingti_nZi9EGE.jpg?format=webp&w=360&dpr=1.3',
            width: 65.w,
            height: 300.h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            'Powerpuff Girls: Buttercup',
            style: headlineStyle,
          ),
          Text(
            'Women\'s Hoodies',
            style: headline2Style,
          ),
          Text(
            '₹ 1490',
            style: priceStyle,
          ),
        ],
      ),
      //Image 3
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/Top-selling-tile-Ayush_IHnQBnI.jpg?format=webp&w=360&dpr=1.3',
            fit: BoxFit.cover,
            height: 300.h,
            width: 65.w,
          ),
          SizedBox(height: 10),
          Text(
            'F.R.I.E.N.D.S.: Fet. Ayush Mehra',
            style: headlineStyle,
          ),
          Text(
            'Womens\'s Tshirt\'s',
            style: headline2Style,
          ),
          Text(
            '₹ 1190',
            style: priceStyle,
          ),
        ],
      ),
      //Image 4
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/SpongeBob-Pattern-Pajama-Set-top-selling-tile_1.jpg?format=webp&w=360&dpr=1.3',
            fit: BoxFit.cover,
            height: 300.h,
            width: 65.w,
          ),
          SizedBox(height: 10),
          Text(
            'Sponge Bob: Pattern Set',
            style: headlineStyle,
          ),
          Text(
            'Night Suit\'s',
            style: headline2Style,
          ),
          Text(
            '₹ 1199',
            style: priceStyle,
          ),
        ],
      ),
      //Image 5
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/Top-selling-tile--Deadpool-Jacket.jpg?format=webp&w=360&dpr=1.3',
            fit: BoxFit.cover,
            height: 300.h,
            width: 65.w,
          ),
          SizedBox(height: 10),
          Text(
            'Deadpool: Face',
            style: headlineStyle,
          ),
          Text(
            'Jackets',
            style: headline2Style,
          ),
          Text(
            '₹ 1990',
            style: priceStyle,
          ),
        ],
      ),
      //Image 6
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1642605839_4160223.jpg?format=webp&w=480&dpr=1.3',
            fit: BoxFit.cover,
            height: 300.h,
            width: 65.w,
          ),
          SizedBox(height: 10),
          Text(
            'Harry Potter: Doole',
            style: headlineStyle,
          ),
          Text(
            'Women\'s Shirts',
            style: headline2Style,
          ),
          Text(
            '₹ 899',
            style: priceStyle,
          ),
        ],
      ),
    ];
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                DelayedDisplay(
                  delay: Duration(milliseconds: 500),
                  child: Image.network(
                    'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/category/catban-920211223115629.jpg?format=webp&w=1500&dpr=1.3',
                    fit: BoxFit.cover,
                    height: 450.h,
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 600),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: 1, child: DropDownList()),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Home / Men Tshirts",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 3.sp),
                            ),
                            Text(
                              "Men Tshirts - 200 Items",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 4.sp),
                            ),
                            SizedBox(
                                height: 600.h,
                                child: SingleChildScrollView(
                                  child: Wrap(
                                    direction: Axis.horizontal,
                                    spacing: 30.0,
                                    runSpacing: 40.0,
                                    children: productImages,
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
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
      child:Text('Sale',
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

class DropDownList extends StatefulWidget {
  const DropDownList({Key? key}) : super(key: key);

  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  @override
  Widget build(BuildContext context) {
    bool? _isChecked = false;
    return ExpandableNotifier(
        child: Column(
      children: <Widget>[
        //Product List
        ScrollOnExpand(
          scrollOnExpand: true,
          scrollOnCollapse: false,
          child: ExpandablePanel(
            controller: ExpandableController(),
            theme: const ExpandableThemeData(
              iconColor: Colors.black,
              iconSize: 27,
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              tapBodyToCollapse: true,
            ),
            header: const Text(
              "PRODUCTS",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            collapsed: Container(),
            expanded: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const PrimaryTextField(
                    txt: 'Search Product',
                  ),
                  CheckboxListTile(
                    title: const Text('T-shirts'),
                    value: _isChecked,
                    onChanged: (bool? val) {
                      setState(() {
                        _isChecked = val;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text('Shirts'),
                    value: _isChecked,
                    onChanged: (bool? val) {
                      setState(() {
                        _isChecked = val;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text('Oversized T-shirts'),
                    value: _isChecked,
                    onChanged: (bool? val) {
                      setState(() {
                        _isChecked = val;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ],
              ),
            ),
            builder: (_, collapsed, expanded) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                  theme: const ExpandableThemeData(crossFadePoint: 0),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 5,
        ),
        //Theme List
        ScrollOnExpand(
          scrollOnExpand: true,
          scrollOnCollapse: false,
          child: ExpandablePanel(
            controller: ExpandableController(),
            theme: const ExpandableThemeData(
              iconColor: Colors.black,
              iconSize: 27,
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              tapBodyToCollapse: true,
            ),
            header: const Text(
              "Theme",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            collapsed: Container(),
            expanded: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const PrimaryTextField(
                    txt: 'Search Product',
                  ),
                  CheckboxListTile(
                    title: const Text('Football'),
                    value: _isChecked,
                    onChanged: (bool? val) {
                      setState(() {
                        _isChecked = val;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text('Mickey mouse'),
                    value: _isChecked,
                    onChanged: (bool? val) {
                      setState(() {
                        _isChecked = val;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text('Star Wars'),
                    value: _isChecked,
                    onChanged: (bool? val) {
                      setState(() {
                        _isChecked = val;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ],
              ),
            ),
            builder: (_, collapsed, expanded) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                  theme: const ExpandableThemeData(crossFadePoint: 0),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 5,
        ),
        //Size List
        ScrollOnExpand(
          scrollOnExpand: true,
          scrollOnCollapse: true,
          child: ExpandablePanel(
            controller: ExpandableController(),
            theme: const ExpandableThemeData(
              iconColor: Colors.black,
              iconSize: 27,
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              tapBodyToCollapse: true,
            ),
            header: const Text(
              "Size",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            collapsed: Container(),
            expanded: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const PrimaryTextField(
                    txt: 'Search Product',
                  ),
                  CheckboxListTile(
                    title: const Text('M'),
                    value: _isChecked,
                    onChanged: (bool? val) {
                      setState(() {
                        _isChecked = val;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text('L'),
                    value: _isChecked,
                    onChanged: (bool? val) {
                      setState(() {
                        _isChecked = val;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text('XL'),
                    value: _isChecked,
                    onChanged: (bool? val) {
                      setState(() {
                        _isChecked = val;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: const Text('XXL'),
                    value: _isChecked,
                    onChanged: (bool? val) {
                      setState(() {
                        _isChecked = val;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ],
              ),
            ),
            builder: (_, collapsed, expanded) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                  theme: const ExpandableThemeData(crossFadePoint: 2),
                ),
              );
            },
          ),
        ),

        SizedBox(
          height: 5,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                  border: Border.all(color: primarycolor),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: Text(
                  'Apply',
                  style: TextStyle(color: primarycolor),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                  border: Border.all(color: primarycolor),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: Text(
                  'Clear',
                  style: TextStyle(color: primarycolor),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
