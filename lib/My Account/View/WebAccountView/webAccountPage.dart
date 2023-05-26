import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:demoproject/Login%20Page/View/WebLoginView/web_login.dart';
import 'package:demoproject/constant.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class WebAccountPage extends StatefulWidget {
  const WebAccountPage({Key? key}) : super(key: key);

  @override
  _WebAccountPageState createState() => _WebAccountPageState();
}

class _WebAccountPageState extends State<WebAccountPage> {
  TextEditingController textController = TextEditingController();
  final List isHovertext = [
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.network(
              'images/62.png',
              height: 60,
              width: 50,
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: 5,
            ),
            TextButton(
                onHover: (value) {
                  setState(() {
                    value ? isHovertext[0] = true : isHovertext[0] = false;
                  });
                },
                onPressed: () {},
                child: Text('MEN',
                    style: TextStyle(
                      color: isHovertext[0] ? primarycolor : Colors.black,
                      fontSize: 20,
                    ))),
            SizedBox(width: 2),
            TextButton(
                onHover: (value) {
                  setState(() {
                    value ? isHovertext[1] = true : isHovertext[1] = false;
                  });
                },
                onPressed: () {},
                child: Text('WOMEN',
                    style: TextStyle(
                        color: isHovertext[1] ? primarycolor : Colors.black,
                        fontSize: 20))),
            SizedBox(width: 2),
            TextButton(
                onHover: (value) {
                  setState(() {
                    value ? isHovertext[2] = true : isHovertext[2] = false;
                  });
                },
                onPressed: () {},
                child: Text('WINTER WEAR',
                    style: TextStyle(
                        color: isHovertext[2] ? primarycolor : Colors.black,
                        fontSize: 20))),
            SizedBox(width: 2),
            TextButton(
                onHover: (value) {
                  setState(() {
                    value ? isHovertext[3] = true : isHovertext[3] = false;
                  });
                },
                onPressed: () {},
                child: Text('SALE',
                    style: TextStyle(
                        color: isHovertext[3] ? primarycolor : Colors.black,
                        fontSize: 20))),
            SizedBox(width: 2),
            TextButton(
                onHover: (value) {
                  setState(() {
                    value ? isHovertext[4] = true : isHovertext[4] = false;
                  });
                },
                onPressed: () {},
                child: Text('EXCLUSIVE MEMBERSHIP',
                    style: TextStyle(
                        color: isHovertext[4] ? primarycolor : Colors.black,
                        fontSize: 20))),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
            child: AnimSearchBar(
              prefixIcon: const Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
              color: primarycolor,
              style: TextStyle(color: Colors.white, fontSize: 20),
              autoFocus: true,
              width: 400,
              textController: textController,
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 2),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 2),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 2),
            child: IconButton(
              onPressed: () {
                Get.to(const WebLogin());
              },
              icon: const Icon(
                Icons.person_outline,
                // size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Column(
            children: [
              profileView(context),
              SizedBox(
                height: 10,
              ),
              orderSummery(context),
              SizedBox(
                height: 10,
              ),
              savedCards(context),
              SizedBox(
                height: 10,
              ),
              giftVoucher(context),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text('Logout',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  //Saved Cards
  Widget savedCards(context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              " Saved Card\'s",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 20,
            )
          ],
        ),
      );

  //Order Summery
  Widget orderSummery(context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Order",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 20,
            )
          ],
        ),
      );

  //GIFT VOUCHER
  Widget giftVoucher(context) => ExpandableNotifier(
          child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                iconColor: Colors.black,
                iconSize: 27,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Gift Voucher",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              collapsed: Container(),
              expanded: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.3))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          child: Center(
                            child: Text('My Voucher list is empty',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25)),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                color: primarycolor,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Center(
                                child: Text('Buy Gift Voucher',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ));

  //Profile View
  Widget profileView(context) => ExpandableNotifier(
          child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                iconColor: Colors.black,
                iconSize: 27,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              collapsed: Container(),
              expanded: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: double.infinity,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Text('Email Id',
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        SizedBox(
                          height: 10,
                        ),
                        LoginInTextField(
                          txt: 'Enter Email Id',
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text('General Information',
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 1000),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text('First Name',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                FirstNameTextField(txt: 'Enter First Name'),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Text('Date Of Birth',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                DateOfBirth(txt: 'Enter First Name'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text('Last Name',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                LastNameTextField(txt: 'Enter First Name'),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Text('Mobile Number',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                PhoneNumberTextField(txt: 'Enter Phone Number'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Text('Default Address',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                            AddressTextField(txt: 'Add Address'),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: primarycolor,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Center(
                                child: Text('SAVE',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ));
}

class LoginInTextField extends StatelessWidget {
  final String txt;
  const LoginInTextField({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            fillColor: Colors.black,
            hintText: txt,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
      ),
    );
  }
}

class FirstNameTextField extends StatelessWidget {
  final String txt;
  const FirstNameTextField({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            fillColor: Colors.black,
            hintText: txt,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
      ),
    );
  }
}

class LastNameTextField extends StatelessWidget {
  final String txt;
  const LastNameTextField({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            fillColor: Colors.black,
            hintText: txt,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
      ),
    );
  }
}

class DateOfBirth extends StatelessWidget {
  final String txt;
  const DateOfBirth({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            fillColor: Colors.black,
            hintText: txt,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
      ),
    );
  }
}

class PhoneNumberTextField extends StatelessWidget {
  final String txt;
  const PhoneNumberTextField({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            fillColor: Colors.black,
            hintText: txt,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
      ),
    );
  }
}

class AddressTextField extends StatelessWidget {
  final String txt;
  const AddressTextField({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.number,
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            fillColor: Colors.black,
            hintText: txt,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 16)),
      ),
    );
  }
}
