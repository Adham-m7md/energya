import 'package:Energya/core/utils/app_routers.dart';
import 'package:Energya/core/utils/extentions.dart';
import 'package:Energya/presentation/home/widgets/head_line_bar_home_view.dart';
import 'package:Energya/presentation/home/widgets/material_list_item.dart';
import 'package:Energya/presentation/home/widgets/production_list.dart';
import 'package:Energya/presentation/home/widgets/text_feilds.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeadLineBar(
          headLineText: 'Production',
          secondeHeadLineText: 'View',
          onTapAction: () => context.NavigatePushTo(
            AppRouters.kProductionGridViewPage,
          ),
        ),
        const ProductionList(),
        HeadLineBar(
          headLineText: 'Engineering',
        ),
        TextFeild(
          suffixIcon: Icons.arrow_drop_down,
          prefixIcon: Icons.note_add,
          hintText: 'create Project',
        ),
        const SizedBox(
          height: 12,
        ),
        TextFeild(
          hintText: 'create order',
          prefixIcon: Icons.note_add,
          suffixIcon: Icons.arrow_drop_down,
        ),
        const SizedBox(
          height: 12,
        ),
        TextFeild(
          hintText: 'creatr release',
          suffixIcon: Icons.arrow_drop_down,
          prefixIcon: Icons.note_add,
        ),
        HeadLineBar(
          headLineText: 'MaterialList',
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialListItem(
              titel: 'Add Material List',
              iconData: Icons.add,
            ),
            MaterialListItem(
              titel: 'Edit Material List',
              iconData: Icons.edit,
            ),
          ],
        ),
        HeadLineBar(
          headLineText: 'Reports',
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 12, right: 120, left: 120),
          child: MaterialListItem(
            titel: 'Add Report',
            iconData: Icons.note_add,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
