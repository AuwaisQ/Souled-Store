import 'package:demoproject/Login%20Page/View/MobileLoginView/mobile_login.dart';
import 'package:demoproject/constant.dart';
import 'package:demoproject/dropdown_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 355,
      child: Drawer(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Column(
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
                      ],
                    ),
                    Column(children: []),
                    Row(
                      children: [
                        Column(
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.to(const MobileLogin());
                              },
                              child: const Text(
                                "Johndoy45 ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             const ExclusiveMember()));
                              },
                              child: const Text(
                                "Exclusive Member ",
                                style: TextStyle(
                                  color: primarycolor,
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chevron_right,
                          color: Colors.black,
                          size: 30,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 55,
              width: 270,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(width: 2.0, color: Colors.grey.shade200),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                              // color: primarycolor,
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(
                                  width: 2.0,
                                  color: Colors.black.withOpacity(0.2)),
                              boxShadow: [
                                BoxShadow(color: Colors.white.withOpacity(0.6))
                              ]),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                'Men',
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
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                                width: 2.0,
                                color: Colors.black.withOpacity(0.2)),
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                'Women',
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
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: const DropdownList(),
            ),
            //
            //bottomwear

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: const BottomWear(),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 50,
                width: 330,
                child: Row(
                  children: [
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const Mencoorder()));
                          },
                          child: Text(
                            'Co-ord Sets',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: const Accessories(),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const newarivals()));
                        },
                        child: Text(
                          'New Arrivals',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              height: 40,
              width: 330,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Hottest Deals 🔥',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 8,
              color: Colors.grey.withOpacity(0.1),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: const ShopeByThemes(),
            ),

            Container(
              height: 50,
              width: 330,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Supima Collection',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.expand_more,
                            color: primarycolor,
                            size: 30,
                          )),
                    ],
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const StayAtHome()));
                        },
                        child: Text(
                          'Stay at home',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: const Ipl(),
            ),

            Divider(
              thickness: 5,
              color: Colors.grey.withOpacity(0.1),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: const Moreinfo(),
            ),
          ],
        ),
      )),
    );
  }
}
