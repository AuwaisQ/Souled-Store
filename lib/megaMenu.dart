import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quds_popup_menu/quds_popup_menu.dart';

class MegaMenu extends StatefulWidget {
  const MegaMenu({Key? key}) : super(key: key);

  @override
  State<MegaMenu> createState() => _MegaMenuState();
}

class _MegaMenuState extends State<MegaMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            Text('Exclusive Membership',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 5.sp,
                ))
          ],
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
          titleText: 'TOPWEAR',
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
          titleText: 'BOTTOMWEAR',
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
          titleText: 'ACCESSORIES',
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
          titleText: 'TOPWEAR',
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
          titleText: 'BOTTOMWEAR',
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
          titleText: 'ACCESSORIES',
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

  ///WinterWear
  Widget sale(context) => QudsPopupButton(
      items: saleItem(),
      child:Text('WINTER WEAR',
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