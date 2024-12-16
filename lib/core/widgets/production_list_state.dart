import 'package:Energya/core/utils/app_routers.dart';
import 'package:Energya/core/utils/extentions.dart';
import 'package:Energya/presentation/home/widgets/production_Item.dart';
import 'package:flutter/material.dart';

class ProductionListState {
  static List<ProductionItem> getProductionListItems(BuildContext context) {
    return [
      ProductionItem(
          imageAsset: 'images/prepraction.png',
          productionName: 'prepraction',
          onTapAction: () =>
              context.NavigatePushTo(AppRouters.kPrepractionInsertPage)),
      ProductionItem(
          imageAsset: 'images/assemply.png',
          productionName: 'Assemply',
          onTapAction: () =>
              context.NavigatePushTo(AppRouters.kAssemplayInsertPage)),
      ProductionItem(
          imageAsset: 'images/welding.png',
          productionName: 'Welding',
          onTapAction: () =>
              context.NavigatePushTo(AppRouters.kWeldingInsertPage)),
      ProductionItem(
          imageAsset: 'images/visual.png',
          productionName: 'Visual',
          onTapAction: () =>
              context.NavigatePushTo(AppRouters.kvisualInsertPage)),
      ProductionItem(
        imageAsset: 'images/follow up.png',
        productionName: 'follow up',
        onTapAction: () => context.NavigatePushTo(AppRouters.kFollowUpPage),
      ),
      ProductionItem(
        imageAsset: 'images/painting.png',
        productionName: 'paining',
        // onTapAction: () => context.NavigatePushTo(AppRouters.kFollowUpPage),
      ),
      ProductionItem(
        imageAsset: 'images/dispatch.png',
        productionName: 'dispatch',
        // onTapAction: () => context.NavigatePushTo(AppRouters.kFollowUpPage),
      ),
      ProductionItem(
        imageAsset: 'images/galv.png',
        productionName: 'galvanization',
        // onTapAction: () => context.NavigatePushTo(AppRouters.kFollowUpPage),
      ),
    ];
  }
}
