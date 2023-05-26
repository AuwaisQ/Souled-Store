import 'package:carousel_slider/carousel_slider.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:demoproject/Cart%20Page/Modle/cart.dart';
import 'package:demoproject/Home%20Page/View/MobileHomePageView/searchPage.dart';
import 'package:demoproject/WhishList%20Page/Model/whishList.dart';
import 'package:demoproject/Login%20Page/Modle/login.dart';
import 'package:demoproject/Products%20Page/View/MobileProductPage/mobileProductView.dart';
import 'package:demoproject/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  final List<Widget> categorySliderImages = [
    Image.network(
      'https://prod-img.thesouledstore.com/public/theSoul/uploads/slider/mob-20220210151002.jpg?format=webp&w=576&dpr=1.3',
      width: 400,
      fit: BoxFit.cover,
    ),
    Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/uploads/slider/mob-20220208110210.jpg?format=webp&w=576&dpr=1.3',
        width: 400,
        fit: BoxFit.cover),
    Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/uploads/slider/mob-20220210150358.jpg?format=webp&w=576&dpr=1.3',
        width: 400,
        fit: BoxFit.cover),
    Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/uploads/slider/mob-20211215120756.jpg?format=webp&w=576&dpr=1.3',
        width: 400,
        fit: BoxFit.cover),
    Image.network(
        'https://prod-img.thesouledstore.com/public/theSoul/uploads/slider/mob-20211216174905.gif?format=webp&w=576&dpr=1.3',
        width: 400,
        fit: BoxFit.cover),
  ];

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  Widget appBarTitle = const Text("AppBar Title");
  Icon actionIcon = const Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: const AppDrawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade800,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              _scaffoldkey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            )),
        title: const Text(
          'VLACK',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.to(const SearchPage());
            },
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 27,
            ),
          ),
          SizedBox(width: 5),
          InkWell(
            onTap: () {
              Get.to(const WhishListPage());
            },
            child: Icon(
              Icons.favorite_outline_rounded,
              color: Colors.white,
              size: 27,
            ),
          ),
          SizedBox(width: 5),
          InkWell(
            onTap: () {
              Get.to(const Login());
            },
            child: InkWell(
              onTap: () {
                Get.to(const CartPage());
              },
              child: Icon(
                Icons.shopping_bag,
                color: Colors.white,
                size: 27,
              ),
            ),
          ),
          SizedBox(width: 5),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DelayedDisplay(
              delay: const Duration(milliseconds: 700),
              child: CarouselSlider(
                  items: categorySliderImages,
                  options: CarouselOptions(
                    height: 380.0,
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    autoPlayCurve: Curves.ease,
                    viewportFraction: 1.0,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 12,
              color: Colors.grey.withOpacity(0.1),
            ),
            SizedBox(
              height: 10,
            ),
            // new arivals
            DelayedDisplay(
              delay: const Duration(milliseconds: 600),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "NEW ARRIVAL",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 700),
              child: CarouselSlider(
                  items: [
                    newArrival(context),
                    newArrival(context),
                    newArrival(context),
                  ],
                  //Slider Container two
                  options: CarouselOptions(
                    height: 380.0,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 1.05,
                  )),
            ),
            // slider three
            Divider(
              thickness: 12,
              color: Colors.grey.withOpacity(0.1),
            ),
            SizedBox(
              height: 20,
            ),

            // new arivals
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "CATEGORIES",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 10,
                      width: 275,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://prod-img.thesouledstore.com/public/theSoul/uploads/slider/mob-20211206110041.jpg?format=webp&w=480&dpr=2.6https://prod-img.thesouledstore.com/public/theSoul/uploads/slider/mob-20211206110041.jpg?format=webp&w=480&dpr=2.6'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(onPressed: () {}),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 6,
                      width: 275,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/new-arrival-Rainbow-Tie-Dye-Sweatshirt_iFvy57U.jpg?format=webp&w=480&dpr=0.9'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(onPressed: () {}),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 6,
                      width: 275,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/new-arrival-Batman-Puffer-jacket_AhS6tAg.jpg?format=webp&w=480&dpr=2.0'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(onPressed: () {}),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 6,
                      width: 275,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/Grey-sweater-dress_1.jpg?format=webp&w=480&dpr=0.9'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(onPressed: () {}),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 6,
                      width: 275,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/new-arrival--Black-Panther-T-shirt_iH0dE2I.jpg?format=webp&w=480&dpr=0.9'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(onPressed: () {}),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 12,
              color: Colors.grey.withOpacity(0.1),
            ),
            SizedBox(
              height: 20,
            ),

            // setICIAL MERCHANDISE
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "OFFICIAL MERCHANDISE",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/Marvel_Logo_268x220_b16y8nC_GKd3vRA.jpg?format=webp&w=300&dpr=0.9'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(onPressed: () {}),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/DC_Logo_268x220_qtYfouo_VyuqmVD.jpg?format=webp&w=300&dpr=0.9'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(onPressed: () {}),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/DC_Logo_268x220_qtYfouo_VyuqmVD_Pbz2nyW.jpg?format=webp&w=360&dpr=2.0'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(onPressed: () {}),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/HarryPotter_Logo_268x220_LqBAKZU_Y8BG6uT.jpg?format=webp&w=360&dpr=2.0'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(onPressed: () {}),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/WWE_Logo_268x220_kKX4Tz6_vsaXHfk.jpg?format=webp&w=240&dpr=0.9'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(onPressed: () {}),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/CSK_268x220_uUbHRKl_uwis8JT.jpg?format=webp&w=300&dpr=0.9'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(onPressed: () {}),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/Merchandies-images/Disnety_Logo_268x220_GevoL2M_2j5PP2v.jpg?format=webp&w=300&dpr=0.9'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(onPressed: () {}),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    // categories
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 12,
              color: Colors.grey.withOpacity(0.1),
            ),
            const SizedBox(
              height: 20,
            ),
            // new arivals
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: const [
                  Text(
                    "Top Selling",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CarouselSlider(
                items: [
                  //1st Image of Slider
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade200)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 240,
                              width: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://api.powerlook.in/pub/media/catalog/product//d/p/dp_135_1.jpg'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(onPressed: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 5),
                              child: Row(
                                children: const [
                                  Text(
                                    "Comfertable & Stilish",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Text(
                                    'Topwear',
                                    style:
                                        TextStyle(color: Colors.grey.shade700),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Text(
                                    '11% Member savings',
                                    style:
                                        TextStyle(color: Colors.pink.shade400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade200)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 240,
                              width: 165,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://api.powerlook.in/pub/media/catalog/product//d/p/dp_923.jpg'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(onPressed: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 5),
                              child: Row(
                                children: const [
                                  Text(
                                    "Comfertable & Stilish",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Text(
                                    'Topwear',
                                    style:
                                        TextStyle(color: Colors.grey.shade700),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Text(
                                    '11% Member savings',
                                    style:
                                        TextStyle(color: Colors.pink.shade400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 320.0,

                  // aspectRatio: 16 / 9
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 1.0,
                )),
            const SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 12,
              color: Colors.grey.withOpacity(0.1),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: const [
                  Text(
                    "Exclusive Membership",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/9_Pajama.jpg?format=webp&w=600&dpr=1.1'),
                      fit: BoxFit.cover)),
              child: MaterialButton(
                onPressed: () {},
              ),
            ),

            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  //New Arrival Slider
  Widget newArrival(context) => Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                            image: NetworkImage(
                              'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/1_T-shirts.jpg?format=webp&w=480&dpr=0.9',
                            ),
                            fit: BoxFit.cover)),
                    child: MaterialButton(
                      onPressed: () {
                        Get.to(const MobileProductPage());
                      },
                    ),
                  ),
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/2_Dresses.jpg?format=webp&w=480&dpr=0.9'),
                            fit: BoxFit.cover)),
                    child: MaterialButton(
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/3_Shirts.jpg?format=webp&w=480&dpr=0.9'),
                            fit: BoxFit.cover)),
                    child: MaterialButton(
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/Sweaters_PRgXId7.jpg?format=webp&w=300&dpr=2.0'),
                            fit: BoxFit.cover)),
                    child: MaterialButton(
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget categories(context) => Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                            image: NetworkImage(
                              'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/1_T-shirts.jpg?format=webp&w=480&dpr=0.9',
                            ),
                            fit: BoxFit.cover)),
                    child: MaterialButton(
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/2_Dresses.jpg?format=webp&w=480&dpr=0.9'),
                            fit: BoxFit.cover)),
                    child: MaterialButton(
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/3_Shirts.jpg?format=webp&w=480&dpr=0.9'),
                            fit: BoxFit.cover)),
                    child: MaterialButton(
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://prod-img.thesouledstore.com/public/theSoul/storage/mobile-cms-media-prod/product-images/Sweaters_PRgXId7.jpg?format=webp&w=300&dpr=2.0'),
                            fit: BoxFit.cover)),
                    child: MaterialButton(
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
