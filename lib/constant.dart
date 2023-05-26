import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

const primarycolor = Color(0xffED2D2F);

class PrimaryTextField extends StatelessWidget {
  final String txt;
  const PrimaryTextField({Key? key, required this.txt}) : super(key: key);
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

class PrimaryTextfield extends StatefulWidget {
  final String labelText;
  const PrimaryTextfield({Key? key, required this.labelText}) : super(key: key);

  @override
  _PrimaryTextfieldState createState() => _PrimaryTextfieldState();
}

class _PrimaryTextfieldState extends State<PrimaryTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        alignLabelWithHint: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
