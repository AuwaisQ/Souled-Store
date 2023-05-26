import 'package:delayed_display/delayed_display.dart';
import 'package:demoproject/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileCartPage extends StatefulWidget {
  const MobileCartPage({Key? key}) : super(key: key);

  @override
  _MobileCartPageState createState() => _MobileCartPageState();
}

class _MobileCartPageState extends State<MobileCartPage> {
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
      body: SafeArea(
        child: Column(
          children: [
            DelayedDisplay(
              delay: const Duration(milliseconds: 300),
              child: Padding(
                padding: EdgeInsets.only(top: 120),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset('images/carticon.png')],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Text(
                'Your shopping cart is empty',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              child: Text(
                'Please add something soon, carts have feelings\n too.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 600),
                child: Container(
                  height: 130,
                  width: double.infinity,
                  color: Colors.grey.shade300,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Popular Categories',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          PopularCatgories(
                            text: 'Men\'s T-Shirt',
                          ),
                          PopularCatgories(
                            text: 'Cotton Shirt\'s',
                          ),
                          PopularCatgories(
                            text: 'Joggers',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          PopularCatgories(
                            text: 'Sports',
                          ),
                          PopularCatgories(
                            text: 'Tank Tops',
                          ),
                          PopularCatgories(
                            text: 'Polos',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 700),
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(width: 2.0, color: primarycolor),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'CONTINUE SHPOPPING',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PopularCatgories extends StatefulWidget {
  final String text;
  const PopularCatgories({Key? key, required this.text}) : super(key: key);

  @override
  _PopularCatgoriesState createState() => _PopularCatgoriesState();
}

class _PopularCatgoriesState extends State<PopularCatgories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(width: 2.0, color: Colors.grey),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 9,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
