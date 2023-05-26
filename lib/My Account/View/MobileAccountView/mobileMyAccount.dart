import 'package:delayed_display/delayed_display.dart';
import 'package:demoproject/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class MobileMyAcount extends StatefulWidget {
  const MobileMyAcount({Key? key}) : super(key: key);

  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<MobileMyAcount> {
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
        title: DelayedDisplay(
          delay: const Duration(milliseconds: 200),
          slidingBeginOffset: const Offset(5.0, 1.1),
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: const [
                Text(
                  'My Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),
      body: SafeArea(
        child: DelayedDisplay(
          delay: const Duration(milliseconds: 600),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 10),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: AssetImage('images/62.png'),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Johndoy45 ",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "(Exclusive Member) ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 06,
                color: Colors.grey.withOpacity(0.1),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.grey.withOpacity(0.1),
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "My Order",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.grey.withOpacity(0.1),
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Address Book",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
