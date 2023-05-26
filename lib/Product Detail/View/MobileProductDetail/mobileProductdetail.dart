import 'package:carousel_slider/carousel_slider.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:demoproject/Cart%20Items/Modle/cartItems.dart';
import 'package:demoproject/constant.dart';
import 'package:demoproject/dropdown_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class MobileProductDetail extends StatefulWidget {
  const MobileProductDetail({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MobileProductDetail> {
  late List<Widget> productPageImages = [
    Image.network(
        'https://api.powerlook.in/pub/media/catalog/product//d/p/dp_773.jpg'),
    Image.network(
        'https://api.powerlook.in/pub/media/catalog/product//d/-/d-1_40.jpg'),
    Image.network(
        'https://api.powerlook.in/pub/media/catalog/product//d/-/d-2_40.jpg'),
    Image.network(
        'https://api.powerlook.in/pub/media/catalog/product//d/-/d-2_40.jpg'),
    Image.network(
        'https://api.powerlook.in/pub/media/catalog/product//d/-/d-3_39.jpg'),
    Image.network(
        'https://api.powerlook.in/pub/media/catalog/product//d/-/d-3_39.jpg')
  ];

  // late GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  Widget appBarTitle = const Text("AppBar Title");
  Icon actionIcon = const Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey.shade800,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline_rounded,
                  color: Colors.white,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                  size: 30,
                )),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: SizedBox(
                height: 500.0,
                width: double.infinity,
                child: CarouselSlider(
                    items: productPageImages,
                    options: CarouselOptions(
                      height: 380.0,
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      autoPlayCurve: Curves.ease,
                      viewportFraction: 1.0,
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 600),
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 15),
                child: Row(
                  children: [
                    Text(
                      'Garfield: Hiding From People',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 600),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'By Garfield',
                      style: TextStyle(
                          color: primarycolor,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 600),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '₹ 599',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          '₹ 599',
                          style: TextStyle(
                              color: primarycolor,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          '46% Member Saving',
                          style: TextStyle(
                              color: Colors.pinkAccent,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 12,
              color: Colors.grey.withOpacity(0.2),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 600),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Please select size.',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'Size Chart',
                        style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'S',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'L',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'M',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'S',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'L',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'S',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'L',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 5,
              color: Colors.grey.withOpacity(0.2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.account_balance_wallet,
                  color: Colors.black,
                  size: 30,
                ),
                Text(
                  'You will earn 78 TSS Points on this Purchase.',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ),
            Divider(
              thickness: 5,
              color: Colors.grey.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    'Delivery Detais',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 0,
                right: 15,
                left: 15,
              ),
              child: Column(
                children: [
                  SizedBox(height: 8),
                ],
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.grey.withOpacity(0.2),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Icon(
                      Icons.lock,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'This item is eligible for return under our easy 30\n day return policy. No questions asked.',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 5,
              color: Colors.grey.withOpacity(0.2),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Product(),
            ),
            Divider(
              thickness: 5,
              color: Colors.grey.withOpacity(0.2),
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
                                          'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1637035549_1900619.jpg?format=webp&w=480&dpr=0.9'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(onPressed: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 5),
                              child: Row(
                                children: [
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
                            SizedBox(
                              width: 120,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹399",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "₹399",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
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
                              width: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1635324357_5233782.jpg?format=webp&w=480&dpr=0.9'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(onPressed: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 5),
                              child: Row(
                                children: [
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
                            SizedBox(
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹399",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "₹399",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
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
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 1.0,
                )),
            SizedBox(
              height: 20,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 600),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: primarycolor,
                    borderRadius: BorderRadius.circular(25)),
                child: TextButton(
                  onPressed: () {
                    Get.to(const CartItems());
                  },
                  child: Text(
                    'GO To Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
