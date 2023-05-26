import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class DropdownList extends StatelessWidget {
  const DropdownList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
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
            header: Text(
              "Topwear",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            collapsed: Container(),
            expanded: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'images/topwearmen/tshirt.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'Tshirt',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'images/topwearmen/dropcutt.png'),
                                        fit: BoxFit.cover)),
                                child: MaterialButton(
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                'Drop cut\nTshirt',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'images/topwearmen/fullslivet.png'),
                                        fit: BoxFit.cover)),
                                child: MaterialButton(
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                'Full Sleeve\nTshirt',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'images/topwearmen/oversizedt.png'),
                                        fit: BoxFit.cover)),
                                child: MaterialButton(
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                'Oversized\nTshirt',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'images/topwearmen/tanktops.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'Tank \nVests',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 19, right: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'images/topwearmen/polos.png'),
                                        fit: BoxFit.cover)),
                                child: MaterialButton(
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                'Polos',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 19, right: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'images/topwearmen/shirts.png'),
                                        fit: BoxFit.cover)),
                                child: MaterialButton(
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                'Shirts',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 19, right: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'images/topwearmen/jacket.png'),
                                        fit: BoxFit.cover)),
                                child: MaterialButton(
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                'Jackets',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'images/topwearmen/hoddies.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'Hoddies ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'images/topwearmen/sweaters.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'sweaters',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            builder: (_, collapsed, expanded) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
}

///BottomWear
class BottomWear extends StatelessWidget {
  const BottomWear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
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
            header: Text(
              "Bottomwear",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            collapsed: Container(),
            expanded: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/topwearmen/9.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'Cotton',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/topwearmen/7.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'Joggers',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/topwearmen/8.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'Shorts',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/topwearmen/6.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'Pajamas',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'images/topwearmen/10.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'Boxers',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            builder: (_, collapsed, expanded) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
}

//Accessories
class Accessories extends StatelessWidget {
  const Accessories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
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
            header: const Text(
              "Accessories & Backpacks",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            collapsed: Container(),
            expanded: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/topwearmen/2.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            const Text(
                              'Umbrellas',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/topwearmen/4.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            const Text(
                              'Cotton Masks',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/topwearmen/1.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            const Text(
                              'Socks',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/topwearmen/5.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            const Text(
                              'Backpaks',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/topwearmen/3.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            const Text(
                              'Journals &\nNotebooks',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            builder: (_, collapsed, expanded) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
}

///IPL
class Ipl extends StatelessWidget {
  const Ipl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
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
                "IPL",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            collapsed: Container(),
            expanded: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Get Discount With Exclusive Membership',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
                              'My order',
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
                  Container(
                    height: 50,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Contact us',
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
                  Container(
                    height: 50,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'FAQ',
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
                ],
              ),
            ),
            builder: (_, collapsed, expanded) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
}

///More info
class Moreinfo extends StatelessWidget {
  const Moreinfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
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
                "More info",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            collapsed: Container(),
            expanded: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Careers',
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
                  Container(
                    height: 50,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'From the soul',
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
                  Container(
                    height: 50,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'About us',
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
                  Container(
                    height: 50,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Gift vouchers',
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
                  Container(
                    height: 50,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'T&C',
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
                  Container(
                    height: 50,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Privacy policy',
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
                ],
              ),
            ),
            builder: (_, collapsed, expanded) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
}

///Shop by themes
class ShopeByThemes extends StatelessWidget {
  const ShopeByThemes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
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
              padding: const EdgeInsets.all(0.0),
              child: Text(
                "Shop by themes",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            collapsed: Container(),
            expanded: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'TSS Solid',
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
                  SizedBox(
                    height: 50,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'TSS Originals',
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
                  Container(
                    height: 50,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Superheroes',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Colors.grey,
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
                                  color: Colors.grey,
                                  size: 30,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Movies(),
                  Container(
                    height: 50,
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Cartoons & Comics',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Colors.grey,
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
                                  color: Colors.grey,
                                  size: 30,
                                )),
                          ],
                        )
                      ],
                    ),
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
                              'Anime',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Colors.grey,
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
                                  color: Colors.grey,
                                  size: 30,
                                )),
                          ],
                        )
                      ],
                    ),
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
                              'Sports',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Colors.grey,
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
                                  color: Colors.grey,
                                  size: 30,
                                )),
                          ],
                        )
                      ],
                    ),
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
                              'Popular Genre',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Colors.grey,
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
                                  color: Colors.grey,
                                  size: 30,
                                )),
                          ],
                        )
                      ],
                    ),
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
                              'Bollywood',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Colors.grey,
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
                                  color: Colors.grey,
                                  size: 30,
                                )),
                          ],
                        )
                      ],
                    ),
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
                              'Stand-Up-Comedy',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Colors.grey,
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
                                  color: Colors.grey,
                                  size: 30,
                                )),
                          ],
                        )
                      ],
                    ),
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
                              'Music',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Colors.grey,
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
                                  color: Colors.grey,
                                  size: 30,
                                )),
                          ],
                        )
                      ],
                    ),
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
                              'Collaborations',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                color: Colors.grey,
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
                                  color: Colors.grey,
                                  size: 30,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            builder: (_, collapsed, expanded) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
}

class Movies extends StatelessWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
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
            header: Text(
              "Movies & Cartoon",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            collapsed: Container(),
            expanded: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/topwearmen/9.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'Cotton',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/topwearmen/7.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'Joggers',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/topwearmen/8.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'Shorts',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/topwearmen/6.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'Pajamas',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'images/topwearmen/10.png'),
                                      fit: BoxFit.cover)),
                              child: MaterialButton(
                                onPressed: () {},
                              ),
                            ),
                            Text(
                              'Boxers',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            builder: (_, collapsed, expanded) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
}

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
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
            header: Text(
              "Product Description",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            collapsed: Container(),
            expanded: Container(
              // decoration: BoxDecoration(
              //     color: Colors.greyithOpacity(0.1),
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(color: Colors.grey)),
              child: Column(
                children: <Widget>[
                  Row(
                    children: const [
                      Text(
                        "Product Description",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Material & Care:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "100% Cotton",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "Machine Wash",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Manufactured & Sold By:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "The Souled Store Pvt. Ltd.\n224, Tantia Jogani Industrial Premises\nJ. Boricha Marg\nLower Parel (E)\nMumbai - 11",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "connect@thesouledstore.com",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            builder: (_, collapsed, expanded) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
}
