import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_proj/app/router/router.gr.dart';
import 'package:test_proj/core/widgets/card_widget.dart';
import 'package:test_proj/core/widgets/primary_button.dart';

class ButtonToRoomWidget extends StatelessWidget {
  const ButtonToRoomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      isRounded: false,
      hasBorder: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        child: PrimaryButton(
          label: 'К выбору номера',
          onTap: () {
            context.pushRoute(const RoomsRoute());
          },
        ),
      ),
    );
  }
}
