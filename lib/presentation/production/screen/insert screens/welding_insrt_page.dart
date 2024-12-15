import 'package:Energya/constants.dart';
import 'package:Energya/presentation/production/widgets/expanded_card.dart';

import 'package:flutter/material.dart';

class WeldingInsrtPage extends StatelessWidget {
  const WeldingInsrtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor.withOpacity(0.5),
        title: const Text('Welding'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: ExpandedCard(
              titel: 'Total',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: ExpandedCard(
              titel: 'U/Welding',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: ExpandedCard(
              titel: 'Done',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: ExpandedCard(
              titel: 'Hold',
            ),
          ),
        ],
      ),
    );
  }
}
