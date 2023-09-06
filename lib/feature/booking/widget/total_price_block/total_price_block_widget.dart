import 'package:flutter/material.dart';
import 'package:test_proj/feature/booking/widget/total_price_block/pay_button_widget.dart';
import 'package:test_proj/feature/booking/widget/total_price_block/total_price_widget.dart';

class TotalPriceBlockWidget extends StatelessWidget {
  const TotalPriceBlockWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TotalPriceWidget(),
        SizedBox(height: 10),
        PayButtonWidget(),
      ],
    );
  }
}
