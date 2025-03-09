import 'package:flutter/material.dart';

import 'info_card_bottons.dart';
import 'info_card_divider.dart';
import 'info_card_list_tile.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [InfoCardListTile(), InfoCardDivider(), InfoCardButtons()],
        ),
      ),
    );
  }
}
