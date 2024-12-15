import 'package:Energya/constants.dart';
import 'package:Energya/core/widgets/production_list_state.dart';
import 'package:flutter/material.dart';

class ProductionGridViewPage extends StatelessWidget {
  const ProductionGridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor.withOpacity(0.5),
        title: const Text('Production'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 8, top: 12, bottom: 12),
        child: GridView.builder(
          itemCount: ProductionListState.getProductionListItems(context).length,
          clipBehavior: Clip.none,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.65,
            crossAxisSpacing: 7,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return ProductionListState.getProductionListItems(context)[index];
          },
        ),
      ),
    );
  }
}
