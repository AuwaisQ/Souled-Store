import 'package:carousel_slider/carousel_slider.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopSellingSliderview extends StatelessWidget {
  const TopSellingSliderview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    TextStyle headline1Style = TextStyle(
        color: Colors.black, fontSize: 4.sp, fontWeight: FontWeight.bold);
    TextStyle headline2Style = TextStyle(color: Colors.grey, fontSize: 3.sp);
    TextStyle priceStyle = TextStyle(color: Colors.black, fontSize: 4.sp);
    //Steal Deal Slider Images
    final List<Widget> sliderimages = [
      //Image 1
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/SpongeBob-Pattern-Pajama-Set-top-selling-tile_2_jhOECMz.jpg?format=webp&w=360&dpr=1.3',
            fit: BoxFit.cover,
            width: 65.w,
          ),
          Text(
            'Tie-Die: Superman Logo Set',
            style: headline1Style,
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
            fit: BoxFit.cover,
          ),
          Text(
            'Powerpuff Girls: Buttercup',
            style: headline1Style,
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
            width: 65.w,
          ),
          Text(
            'F.R.I.E.N.D.S.: Fet. Ayush Mehra',
            style: headline1Style,
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
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/SpongeBob-Pattern-Pajama-Set-top-selling-tile_1.jpg?format=webp&w=360&dpr=1.3',
            fit: BoxFit.cover,
            width: 65.w,
          ),
          Text(
            'Sponge Bob: Pattern Set',
            style: headline1Style,
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
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/Top-selling-tile--Deadpool-Jacket.jpg?format=webp&w=360&dpr=1.3',
            fit: BoxFit.cover,
            width: 65.w,
          ),
          Text(
            'Deadpool: Face',
            style: headline1Style,
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
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1642605839_4160223.jpg?format=webp&w=480&dpr=1.3',
            fit: BoxFit.cover,
            width: 65.w,
          ),
          Text(
            'Harry Potter: Doole',
            style: headline1Style,
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

    return Stack(
      children: [
        CarouselSlider(
          items: sliderimages,
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            height: 400.h,
            viewportFraction: 0.2,
            initialPage: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 180.h,
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: () => buttonCarouselController.previousPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.fastOutSlowIn),
              child: DecoratedIcon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 35,
                shadows: [BoxShadow(color: Colors.black, blurRadius: 5.r)],
              ),
            ),
            InkWell(
              onTap: () => buttonCarouselController.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.fastOutSlowIn),
              child: DecoratedIcon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 35,
                shadows: [BoxShadow(color: Colors.black, blurRadius: 5.r)],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
