import 'package:Energya/core/widgets/production_list_state.dart';
import 'package:flutter/material.dart';
import 'package:Energya/core/utils/directions.dart';

// ignore: must_be_immutable
class ProductionList extends StatelessWidget {
  const ProductionList({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.32,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: ProductionListState.getProductionListItems(context),
      ),
    );
  }
}

