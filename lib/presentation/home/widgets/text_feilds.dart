import 'package:flutter/material.dart';
import 'package:Energya/constants.dart';

// ignore: must_be_immutable
class TextFeild extends StatelessWidget {
  TextFeild(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIcon,
      this.textInputType});
  final String hintText;
  final IconData prefixIcon;
  IconData? suffixIcon;
  TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            size: 22,
          ),
          suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                suffixIcon,
                size: 22,
              )),
          hintText: hintText,
          filled: true,
          fillColor: kPrimaryColor.withOpacity(0.5),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }
}
