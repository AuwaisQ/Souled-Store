import 'package:carousel_slider/carousel_slider.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfficialMerchandiceSliderView extends StatelessWidget {
  const OfficialMerchandiceSliderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    //Steal Deal Slider Images
    final List<Widget> sliderimages = [
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/Marvel_Logo_268x220_b16y8nC_GKd3vRA.jpg?format=webp&w=300&dpr=1.3',
        fit: BoxFit.cover,
        width: 60.w,
      ),
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/DC_Logo_268x220_qtYfouo_VyuqmVD.jpg?format=webp&w=300&dpr=1.3',
        width: 60.w,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/Rick_Morty_268x220_4283QPV.jpg?format=webp&w=300&dpr=1.3',
        fit: BoxFit.cover,
        width: 60.w,
      ),
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/StarWars_268x220_sPJGI16_ODbjkHD.jpg?format=webp&w=300&dpr=1.3',
        fit: BoxFit.cover,
        width: 60.w,
      ),
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/Disnety_Logo_268x220_GevoL2M_2j5PP2v.jpg?format=webp&w=300&dpr=1.3',
        fit: BoxFit.cover,
        width: 60.w,
      ),
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/LooneyTunes_268x220_o3UJ8Y0_OPjL9nW.jpg?format=webp&w=300&dpr=1.3',
        fit: BoxFit.cover,
        width: 60.w,
      ),
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/Peanuts_268x220_qfFXBNz_RlzaFQX.jpg?format=webp&w=300&dpr=1.3',
        fit: BoxFit.cover,
        width: 60.w,
      ),
      Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/MumbaiIndians_268x220_2b23uBM_DU2iZQo.jpg?format=webp&w=300&dpr=1.3',
        fit: BoxFit.cover,
        width: 60.w,
      ),
    ];

    return Stack(
      children: [
        SizedBox(
          height: 190.h,
          width: double.infinity,
          child: CarouselSlider(
            items: sliderimages,
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              viewportFraction: 0.2,
              initialPage: 1,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 5.w),
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
