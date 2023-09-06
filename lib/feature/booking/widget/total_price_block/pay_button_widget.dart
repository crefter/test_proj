import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/app/router/router.gr.dart';
import 'package:test_proj/core/widgets/card_widget.dart';
import 'package:test_proj/core/widgets/primary_button.dart';
import 'package:test_proj/feature/booking/bloc/booking_bloc.dart';
import 'package:test_proj/feature/booking/bloc/tourists_validate_bloc.dart';

class PayButtonWidget extends StatefulWidget {
  const PayButtonWidget({Key? key}) : super(key: key);

  @override
  State<PayButtonWidget> createState() => _PayButtonWidgetState();
}

class _PayButtonWidgetState extends State<PayButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<TouristsValidateBloc, TouristsValidateState>(
      listener: (context, state) {
        if (state is TouristsValidateInitial) {
          return;
        }
        final hasError = switch (state) {
          TouristsValidateErrors() => true,
          _ => false,
        };
        if (hasError) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Необходимо заполнить данные'),
            ),
          );
        } else {
          context.pushRoute(const PaidRoute());
        }
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: CardWidget(
          isRounded: true,
          hasBorder: true,
          child: BlocBuilder<BookingBloc, BookingState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                ),
                child: switch (state) {
                  BookingLoaded() => PrimaryButton(
                      label: "Оплатить ${state.totalPrice} ₽",
                      onTap: () async {
                        Form.of(context).save();
                        Future.delayed(Duration.zero).then(
                          (_) {
                            if (mounted) {
                              context.read<TouristsValidateBloc>().add(
                                    TouristsValidateValid(),
                                  );
                            }
                          },
                        );
                      }),
                  _ => const SizedBox.shrink(),
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
