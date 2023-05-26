import 'package:carousel_slider/carousel_slider.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategorySldier extends StatelessWidget {
  const CategorySldier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    //HomePage Slider 1 Images
    final List<Widget> sliderimages = [
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/uploads/slider/20220119113333.jpg?format=webp&w=1500&dpr=1.3',
        fit: BoxFit.cover,
      ),
      Image.network(
          'https://prod-img.thesouledstore.com/public/theSoul/uploads/slider/20220115212957.jpg?format=webp&w=1500&dpr=1.3',
          fit: BoxFit.cover),
      Image.network(
          'https://prod-img.thesouledstore.com/public/theSoul/uploads/slider/20211226232313.jpg?format=webp&w=1500&dpr=1.3',
          fit: BoxFit.cover),
      Image.network(
          'https://prod-img.thesouledstore.com/public/theSoul/uploads/slider/20220115212936.jpg?format=webp&w=1500&dpr=1.3',
          fit: BoxFit.cover),
      Image.network(
          'https://prod-img.thesouledstore.com/public/theSoul/uploads/slider/20211216174905.gif?format=webp&w=1500&dpr=1.3',
          fit: BoxFit.cover),
    ];

    return Stack(
      children: [
        SizedBox(
          height: 500.h,
          width: double.infinity,
          child: CarouselSlider(
            items: sliderimages,
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              viewportFraction: 1,
              aspectRatio: 1,
              initialPage: 1,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 200.h, horizontal: 10.w),
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
