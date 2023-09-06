import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_proj/app/router/router.gr.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';
import 'package:test_proj/core/widgets/card_widget.dart';
import 'package:test_proj/core/widgets/primary_button.dart';
import 'package:test_proj/core/widgets/scaffold_with_appbar.dart';

// TODO: create page
@RoutePage()
class PaidScreen extends StatelessWidget {
  const PaidScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final containerSize = MediaQuery.of(context).size.height * 0.1158;
    return ScaffoldWithAppbar(
      appBarText: 'Заказ оплачен',
      hasAppBarIcon: true,
      color: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              Container(
                width: containerSize,
                height: containerSize,
                padding: const EdgeInsets.all(25.0),
                decoration: ShapeDecoration(
                  color: const Color(0xFFF6F6F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      containerSize,
                    ),
                  ),
                ),
                child: Image.asset(
                  'assets/pict/petard.png',
                ),
              ),
              const SizedBox(height: 32),
              Text(
                'Ваш заказ принят в работу',
                style: Theme.of(context).textTheme.header,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Text(
                  'Подтверждение заказа №104893 может занять некоторое время '
                  '(от 1 часа до суток). Как только мы получим ответ от '
                  'туроператора, вам на почту придет уведомление.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bookingDescription,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CardWidget(
                isRounded: false,
                hasBorder: true,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  child: PrimaryButton(
                    label: 'Супер!',
                    onTap: () {
                      AutoRouter.of(context).pushAndPopUntil(
                        const HotelRoute(),
                        predicate: (route) => false,
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
