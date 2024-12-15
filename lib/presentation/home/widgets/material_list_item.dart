import 'package:flutter/material.dart';
import 'package:Energya/constants.dart';
import 'package:Energya/core/utils/directions.dart';

class MaterialListItem extends StatelessWidget {
  const MaterialListItem(
      {super.key, required this.titel, required this.iconData});
  final String titel;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.17,
      width: context.width * 0.35,
      decoration: BoxDecoration(
          color: const Color(0xff292929),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 64,
            color: kPrimaryColor,
          ),
          SizedBox(
            height: context.height * 0.022,
          ),
          Text(titel)
        ],
      ),
    );
  }
}
