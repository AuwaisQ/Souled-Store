import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: DelayedDisplay(
            delay: const Duration(milliseconds: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: CupertinoSearchTextField(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2, blurRadius: 5,
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ]),
                    prefixInsets: const EdgeInsets.all(10.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: const Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                SizedBox(height: 5),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 200),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Search Products',
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 20,
                            fontFamily: 'Poppins')),
                  ),
                ),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 300),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.close,
                          color: Colors.grey,
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Avengers LOGO t-Shirt',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontFamily: 'Poppins')),
                      ],
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 400),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.close,
                          color: Colors.grey,
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Marvel LOGO t-Shirt',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontFamily: 'Poppins')),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('New Arrivals',
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins')),
                  ),
                ),
                const SingleProduct()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  const SingleProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DelayedDisplay(
        delay: const Duration(milliseconds: 200),
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
                    height: 250,
                    width: 165,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1635324357_5233782.jpg?format=webp&w=480&dpr=0.9'),
                            fit: BoxFit.cover)),
                    child: MaterialButton(
                      onPressed: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => const ProductDetail()));
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
                    height: 250,
                    width: 165,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1632213857_3476876.jpg?format=webp&w=360&dpr=1.1'),
                            fit: BoxFit.cover)),
                    child: MaterialButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const Select()));
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
          ],
        ),
      ),
    );
  }
}
