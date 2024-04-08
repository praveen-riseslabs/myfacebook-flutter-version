import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  const MyTextFeild(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  final controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(
                color: Colors.grey[500])), //have to dull it some what like 200
      ),
    );
  }
}
