import 'package:delayed_display/delayed_display.dart';
import 'package:demoproject/Product%20Detail/Modle/productDetail.dart';
import 'package:demoproject/Products%20Page/View/MobileProductPage/filter.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class MobileProductPage extends StatefulWidget {
  const MobileProductPage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MobileProductPage> {
  Widget appBarTitle = const Text("AppBar Title");
  Icon actionIcon = const Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DelayedDisplay(
        delay: const Duration(milliseconds: 100),
        child: BottomAppBar(
          child: SizedBox(
            height: 40,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  child: MaterialButton(
                    onPressed: () {
                      Get.to(const Filter());
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.filter_alt, color: Colors.black),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'FILTER',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: MaterialButton(
                    onPressed: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.white,
                          context: context,
                          enableDrag: true,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 260,
                              child: sortShett(context),
                            );
                          });
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.sort,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'SORT',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
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
          title: Padding(
            padding: EdgeInsets.only(top: 0, right: 50),
            child: Column(
              children: const [
                Text(
                  'T-shirt',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                )),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DelayedDisplay(
                delay: const Duration(milliseconds: 400),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      'Get an ADDITIONAL  20% cashback on your order today.',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              tShirts(context),
              SizedBox(
                height: 8,
              ),
              tShirts(context),
              SizedBox(
                height: 8,
              ),
              tShirts(context),
              SizedBox(
                height: 8,
              ),
              tShirts(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget sortShett(context) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Row(
              children: [
                const Icon(
                  Icons.sort,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sort',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Price-High to Low',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.grey.withOpacity(0.4),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Price-Low to High',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.grey.withOpacity(0.4),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Newest',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.grey.withOpacity(0.4),
          ),
        ],
      );

  Widget tShirts(context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: DelayedDisplay(
          delay: const Duration(milliseconds: 600),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: 165,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://api.powerlook.in/pub/media/catalog/product//d/p/dp_773.jpg'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(
                        onPressed: () {
                          Get.to(const ProductDetail(),
                              duration: const Duration(milliseconds: 700));
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Text(
                            "Comfertable & Stilish",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: const [
                              Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                              ),
                            ],
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
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "₹399",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "₹699",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Text(
                            '11% Member savings',
                            style: TextStyle(color: Colors.pink.shade400),
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
                      height: 200,
                      width: 165,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://api.powerlook.in/pub/media/catalog/product//d/-/d-1_39_1.jpg'),
                              fit: BoxFit.cover)),
                      child: MaterialButton(
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Text(
                            "Comfertable & Stilish",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: const [
                              Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                              ),
                            ],
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
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "₹399",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "₹699",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Text(
                            '11% Member savings',
                            style: TextStyle(color: Colors.pink.shade400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
