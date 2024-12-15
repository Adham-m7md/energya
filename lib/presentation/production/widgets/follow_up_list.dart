import 'package:Energya/core/utils/app_routers.dart';
import 'package:Energya/core/utils/extentions.dart';
import 'package:Energya/presentation/home/widgets/production_Item.dart';
import 'package:flutter/material.dart';

class FollowUpList {
  static List<ProductionItem> getFollowUpList(BuildContext context) {
    return [
      ProductionItem(
        imageAsset: 'images/follow up.png',
        productionName: 'Glavanization',
        onTapAction: () =>
            context.NavigatePushTo(AppRouters.kGlavonizationInsertPage),
      ),
      ProductionItem(
        imageAsset: 'images/follow up.png',
        productionName: 'Dispatch',
        onTapAction: () =>
            context.NavigatePushTo(AppRouters.kDispatchInsertPage),
      ),
      ProductionItem(
        imageAsset: 'images/follow up.png',
        productionName: 'Painting',
        onTapAction: () =>
            context.NavigatePushTo(AppRouters.kPaintingInsertPage),
      ),
    ];
  }

 
}
