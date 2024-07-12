
import 'package:flutter/material.dart';
import 'package:calculator_demo/constant/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Color(0xFF26282D),
            filled: true),
        style: TextStyle(fontSize: 40, color: Colors.white),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}


