import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_proj/app/router/router.gr.dart';
import 'package:test_proj/core/widgets/primary_button.dart';

class SelectButtonWidget extends StatelessWidget {
  const SelectButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9146,
      child: PrimaryButton(
        label: 'Выбрать номер',
        onTap: () {
          context.pushRoute(const BookingRoute());
        },
      ),
    );
  }
}