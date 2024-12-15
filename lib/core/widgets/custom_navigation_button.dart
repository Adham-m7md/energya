import 'package:flutter/material.dart';
import 'package:Energya/constants.dart';
import 'package:Energya/core/utils/extentions.dart';

// ignore: must_be_immutable
class CustomNavigatorButton extends StatelessWidget {
  CustomNavigatorButton(
      {super.key,
      required this.buttonName,
      required this.nextRoutName,
      this.borderRadius = 12});
  String buttonName;
  String nextRoutName;
  double borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.NavigatePushTo(nextRoutName);
      },
      highlightColor: kPrimaryColor.withOpacity(0.2),
      splashColor: kPrimaryColor.withOpacity(0.5),
      child: Container(
        height: 55,
        width: 150,
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
            child: Text(
          buttonName,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter'),
        )),
      ),
    );
  }
}
