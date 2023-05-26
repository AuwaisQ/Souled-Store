import 'package:carousel_slider/carousel_slider.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StealDealSliderview extends StatelessWidget {
  const StealDealSliderview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    //Steal Deal Slider Images
    final List<Widget> sliderimages = [
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/639-x-609.jpg?format=webp&w=480&dpr=1.3',
        fit: BoxFit.cover,
        width: 110.w,
      ),
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/new-arrivalsale1.jpg?format=webp&w=480&dpr=1.3',
        width: 110.w,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/new-arrivalsale3_2dPERf9.jpg?format=webp&w=480&dpr=1.3',
        fit: BoxFit.cover,
        width: 110.w,
      ),
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/new-arrivalsale6.jpg?format=webp&w=480&dpr=1.3',
        fit: BoxFit.cover,
        width: 110.w,
      ),
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/new-arrivalsale12_VGH9PXx.jpg?format=webp&w=480&dpr=1.3',
        fit: BoxFit.cover,
        width: 110.w,
      ),
    ];

    return Stack( 
      children: [
        SizedBox(
          height: 400.h,
          width: double.infinity,
          child: CarouselSlider(
            items: sliderimages,
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              viewportFraction: 0.35,
              initialPage: 1,
            ),
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
