import 'package:delayed_display/delayed_display.dart';
import 'package:demoproject/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileWishListPage extends StatefulWidget {
  const MobileWishListPage({Key? key}) : super(key: key);

  @override
  _MobileWishListPageState createState() => _MobileWishListPageState();
}

class _MobileWishListPageState extends State<MobileWishListPage> {
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
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: const [
                Text(
                  'WHISHLIST',
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
        child: Column(
          children: [
            DelayedDisplay(
              delay: const Duration(milliseconds: 300),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/cupboards.png'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Text(
                'Your wishlist is lonely and looking for love.',
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
                'Add products to your wishlistPage , review them\n anytime and easily move to cart.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 600),
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
