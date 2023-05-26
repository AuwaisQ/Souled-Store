import 'package:delayed_display/delayed_display.dart';
import 'package:demoproject/constant.dart';
import 'package:flutter/material.dart';

class Select extends StatefulWidget {
  const Select({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Select> {
  Widget appBarTitle = const Text("AppBar Title");
  Icon actionIcon = const Icon(Icons.search);
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
        title: DelayedDisplay(
          delay: const Duration(milliseconds: 200),
          slidingBeginOffset: const Offset(5.0, 1.1),
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: const [
                Text(
                  'Size Chart T-shirts',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        TextButton(
                          child: const Text(
                            "Size Chart",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          onPressed: () {},
                        ),
                        Container(
                          height: 1,
                          width: 130,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 0,
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "How to measure",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      Container(
                        height: 1,
                        width: 215,
                        color: Colors.grey.shade200,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 145),
                    child: Column(
                      children: [
                        TextButton(
                          child: const Text(
                            "SIZE IN INCHES",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 0,
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "SIZE IN CM",
                          style: TextStyle(
                            color: primarycolor,
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
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "SIZE ",
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
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "Chest ",
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
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "Shoulder ",
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
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "Lenght ",
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
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // SizedBox(
                  //   width: 20,
                  // ),
                  // Column(
                  //   children: [
                  //     Container(
                  //         height: 20,
                  //         width: 20,
                  //         decoration: BoxDecoration(
                  //             border: Border.all(
                  //               color: Colors.black,
                  //             ),
                  //             borderRadius: BorderRadius.circular(70)))
                  //     //  Checkbox(
                  //     //   value: isChecked,
                  //     //   onChanged: (bool? value) {
                  //     //     // This is where we update the state when the checkbox is tapped
                  //     //     setState(() {
                  //     //       isChecked = value!;
                  //     //     });
                  //     //   },
                  //     // ),
                  //   ],
                  // ),
                  Column(
                    children: [
                      Checkbox(
                        shape: CircleBorder(),
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
                  // SizedBox(
                  //   width: 11,
                  // ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "XXS ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   width: 11,
                  // ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "34 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   width: 11,
                  // ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "15.75 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   width: 11,
                  // ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "26 ",
                          style: TextStyle(
                            color: primarycolor,
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
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // SizedBox(
                  //   width: 20,
                  // ),
                  Column(
                    children: [
                      Checkbox(
                        shape: CircleBorder(),
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
                  // SizedBox(
                  //   width: 11,
                  // ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "XS ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   width: 11,
                  // ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "34 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   width: 11,
                  // ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "15.75 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   width: 11,
                  // ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "26 ",
                          style: TextStyle(
                            color: primarycolor,
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
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Checkbox(
                        shape: CircleBorder(),
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
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "XS ",
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
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "40 ",
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
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "20.75 ",
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
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "27 ",
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
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Checkbox(
                        shape: CircleBorder(),
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
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "MX ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "34 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "15.75 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "26 ",
                          style: TextStyle(
                            color: primarycolor,
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
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Checkbox(
                        shape: CircleBorder(),
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
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "LM ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "34 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "15.75 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "26 ",
                          style: TextStyle(
                            color: primarycolor,
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
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Checkbox(
                        shape: CircleBorder(),
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
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "XL ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "34 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "15.75 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "26 ",
                          style: TextStyle(
                            color: primarycolor,
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
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Checkbox(
                        shape: CircleBorder(),
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
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "XL ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "34 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "15.75 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "26 ",
                          style: TextStyle(
                            color: primarycolor,
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
            ),
            Divider(
              thickness: 3,
              color: Colors.grey.withOpacity(0.1),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Checkbox(
                        shape: CircleBorder(),
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
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "XXXL ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "34 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "15.75 ",
                          style: TextStyle(
                            color: primarycolor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        child: const Text(
                          "26 ",
                          style: TextStyle(
                            color: primarycolor,
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
            ),
            Divider(
              thickness: 20,
              color: Colors.grey.withOpacity(0.1),
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              height: 450,
              width: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1610518575_2489096.jpg?format=webp&w=1080&dpr=1.0'),
                      fit: BoxFit.cover)),
              child: MaterialButton(
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: primarycolor, borderRadius: BorderRadius.circular(25)),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Add to cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
