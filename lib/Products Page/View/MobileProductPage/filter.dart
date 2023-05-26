import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<Filter> {
  bool isChecked = false;
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
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'CLOSE',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'APPLY',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
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
        leading: const Icon(
          Icons.filter_1,
          color: Colors.transparent,
        ),
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: 30, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.filter_alt,
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Filter',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Clear All',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Row(
          children: [
            DelayedDisplay(
              delay: const Duration(milliseconds: 300),
              slidingBeginOffset: const Offset(-5.0, 0.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 45,
                    width: 140,
                    child: TextButton(
                      child: const Text(
                        "Product",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                    ),
                    height: 45,
                    width: 140,
                    child: TextButton(
                      child: const Text(
                        "Themes",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                    ),
                    height: 45,
                    width: 140,
                    child: TextButton(
                      child: const Text(
                        "Size",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                    ),
                    height: 45,
                    width: 140,
                    child: TextButton(
                      child: const Text(
                        "Prices",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 300),
              slidingBeginOffset: const Offset(5.0, 0.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Oversized T-shirt',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                        height: 45,
                      ),
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
                  Container(
                    height: 1,
                    width: 220,
                    color: Colors.grey.shade200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Men Co-ord sets',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                        height: 45,
                      ),
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
                  Container(
                    height: 1,
                    width: 220,
                    color: Colors.grey.shade200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Performance Jerseys',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                        height: 45,
                      ),
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
                  Container(
                    height: 1,
                    width: 220,
                    color: Colors.grey.shade200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Droup Cut T-Shirt ',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                        height: 45,
                      ),
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
                  Container(
                    height: 1,
                    width: 220,
                    color: Colors.grey.shade200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Full Sleeve T-shirts',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                        height: 45,
                      ),
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
                  Container(
                    height: 1,
                    width: 220,
                    color: Colors.grey.shade200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Half Sleeve  T-shirts',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        height: 45,
                      ),
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
                  Container(
                    height: 1,
                    width: 220,
                    color: Colors.grey.shade200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Mendarin Polos',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 45,
                      ),
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
                  Container(
                    height: 1,
                    width: 220,
                    color: Colors.grey.shade200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        ' T-shirts',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 45,
                      ),
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
                  Container(
                    height: 1,
                    width: 220,
                    color: Colors.grey.shade200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Mystery T-shirts',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 45,
                        height: 45,
                      ),
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
                  Container(
                    height: 1,
                    width: 220,
                    color: Colors.grey.shade200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Longline T-shirts',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 45,
                        height: 45,
                      ),
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
                  Container(
                    height: 1,
                    width: 220,
                    color: Colors.grey.shade200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Longline T-shirts',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 45,
                        height: 45,
                      ),
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
                  Container(
                    height: 1,
                    width: 220,
                    color: Colors.grey.shade200,
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
