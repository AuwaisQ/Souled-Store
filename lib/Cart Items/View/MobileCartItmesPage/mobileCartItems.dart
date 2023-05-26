import 'package:delayed_display/delayed_display.dart';
import 'package:demoproject/constant.dart';
import 'package:flutter/material.dart';

class MobileCartItems extends StatefulWidget {
  const MobileCartItems({Key? key}) : super(key: key);

  @override
  _MobileCartItemsPageState createState() => _MobileCartItemsPageState();
}

class _MobileCartItemsPageState extends State<MobileCartItems> {
  bool isChecked = false;
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
        title: Padding(
          padding: EdgeInsets.only(top: 10),
          child: DelayedDisplay(
            delay: const Duration(milliseconds: 200),
            child: Column(
              children: const [
                Text(
                  'CART',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '0 Items',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              thickness: 5,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Container(
                height: 30,
                width: double.infinity,
                color: Colors.grey,
                child: const Center(
                  child: Text(
                    'congratulations!You getting ADDITIONAL 20% CASHBACK on this offer. ',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 8,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1636996693_6156334.jpg?format=webp&w=376&dpr=1.0'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 5),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: const [
                                      Text(
                                        'Iron Man: The Suit ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            'Men Full Sleeve T-Shirts ',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade300,
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            border: Border.all(
                                                width: 2.0,
                                                color: Colors.grey.shade300),
                                          ),
                                          child: MaterialButton(
                                            onPressed: () {},
                                            child: Center(
                                              child: Text(
                                                'Size : L',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 25,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade300,
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            border: Border.all(
                                                width: 2.0,
                                                color: Colors.grey.shade300),
                                          ),
                                          child: MaterialButton(
                                            onPressed: () {},
                                            child: Center(
                                              child: Text(
                                                'Qty : 1',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            '₹ 399  ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            "₹699",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            "46% member seving",
                                            style: TextStyle(
                                                color: Colors.pinkAccent,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2.0, color: Colors.grey.shade200),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Remove',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 190,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2.0, color: Colors.grey.shade200),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Move to wishlist',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1633014683_2990141.jpg?format=webp&w=376&dpr=1.0'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 5),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: const [
                                      Text(
                                        'Solid Shirt Dress: ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            'Women Shirt Dresses ',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade300,
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            border: Border.all(
                                                width: 2.0,
                                                color: Colors.grey.shade300),
                                          ),
                                          child: MaterialButton(
                                            onPressed: () {},
                                            child: Center(
                                              child: Text(
                                                'Size : L',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 25,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade300,
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            border: Border.all(
                                                width: 2.0,
                                                color: Colors.grey.shade300),
                                          ),
                                          child: MaterialButton(
                                            onPressed: () {},
                                            child: Center(
                                              child: Text(
                                                'Qty : 1',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            '₹ 600  ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            "₹1200",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            "46% member seving",
                                            style: TextStyle(
                                                color: Colors.pinkAccent,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2.0, color: Colors.grey.shade200),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Remove ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 190,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2.0, color: Colors.grey.shade200),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Move to wishlist ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: const DecorationImage(
                                image: AssetImage('images/62.png'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0, left: 5),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: const [
                                      Text(
                                        'The Vlack Store Exclusive ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            'Exclusive ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Poppins',
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            '10 Months of Membership ',
                                            style: TextStyle(
                                                color: primarycolor,
                                                fontFamily: 'Poppins',
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            '₹ 399  ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Poppins',
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2.0, color: Colors.grey.shade200),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Remove ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.payment,
                            color: primarycolor,
                            size: 35,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        child: const Text(
                          "Apply Coupon ",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 105,
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 30,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.card_giftcard,
                            color: Colors.black,
                            size: 35,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "Gift Voucheres ",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 30,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.card_giftcard,
                            color: Colors.black,
                            size: 35,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "Gift Wraper( ₹25) ",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Column(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.next_week,
                            color: Colors.black,
                            size: 35,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          " TSS Money/TSS Points ",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 30,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    child: Text(
                      'Price Details (Items 3) ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: const [
                    Text(
                      "Cart Total ",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 128,
                ),
                Column(
                  children: const [
                    Text(
                      " ₹ 1,797 ",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: const [
                    Text(
                      "Member Savings ",
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 72,
                ),
                Column(
                  children: const [
                    Text(
                      " ₹ 120 ",
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: const [
                    Text(
                      "Discount",
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 135,
                ),
                Column(
                  children: const [
                    Text(
                      "₹ 400 ",
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: const [
                    Text(
                      "Cart Total ",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 132,
                ),
                Column(
                  children: const [
                    Text(
                      "₹ 102.72 ",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: const [
                    Text(
                      "Shiping Charges ",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 90,
                ),
                Column(
                  children: const [
                    Text(
                      " Free ",
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.2),
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    TextButton(
                      child: const Text(
                        "Total Amount ",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  width: 110,
                ),
                Column(
                  children: [
                    TextButton(
                      child: const Text(
                        "₹1,379 ",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.2),
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: const [
                    Text(
                      "₹1,379  ",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " VIEW DETAILS ",
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.teal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                        border:
                            Border.all(width: 2.0, color: Colors.grey.shade100),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'SELECT ADDRESS ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.2),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
