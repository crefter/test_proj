import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/core/extensions/button_theme_ext.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';
import 'package:test_proj/core/widgets/card_widget.dart';
import 'package:test_proj/feature/booking/bloc/tourists_bloc.dart';

class AddNewTouristWidget extends StatelessWidget {
  const AddNewTouristWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      isRounded: true,
      hasBorder: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13.0),
        child: Row(
          children: [
            Text(
              'Добавить туриста',
              style: Theme.of(context).textTheme.header,
            ),
            const Spacer(),
            SizedBox(
              width: 32,
              height: 32,
              child: ElevatedButton(
                style: Theme.of(context).buttonTheme.addNewUserButton,
                onPressed: () {
                  context.read<TouristsBloc>().add(TouristsAdd());
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
