
import 'package:flutter/material.dart';
import 'package:Energya/constants.dart';
import 'package:Energya/core/utils/directions.dart';

// ignore: must_be_immutable
class ProductionItem extends StatelessWidget {
   ProductionItem(
      {super.key, required this.imageAsset, required this.productionName,this.onTapAction});
  final String imageAsset;
  final String productionName;
VoidCallback? onTapAction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Container(
          height: context.height * 0.32,
          width: context.width * 0.46,
          decoration: BoxDecoration(
            color: const Color(0xff292929),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Image.asset(
                imageAsset,
                height: 190,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: GestureDetector(
                  onTap: onTapAction,
                  child: Container(
                    height: context.height * 0.05,
                    width: context.width * 0.35,
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Align(child: Text(productionName)),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
