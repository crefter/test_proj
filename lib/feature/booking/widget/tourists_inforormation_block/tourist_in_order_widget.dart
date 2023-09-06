import 'package:flutter/material.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';
import 'package:test_proj/core/widgets/card_widget.dart';
import 'package:test_proj/feature/booking/widget/tourists_inforormation_block/my_expandable_widget.dart';
import 'package:test_proj/feature/booking/widget/tourists_inforormation_block/tourist_information_widget.dart';

class TouristInOrderWidget extends StatelessWidget {
  const TouristInOrderWidget({
    super.key,
    required this.order,
  });

  final String order;

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      hasBorder: false,
      isRounded: true,
      child: ExpandablePanel(
        header: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            order,
            style: Theme.of(context).textTheme.header,
          ),
        ),
        collapsed: const SizedBox(height: 13),
        expanded: const ScrollOnExpand(
          child: TouristInformationWidget(),
        ),
      ),
    );
  }
}
