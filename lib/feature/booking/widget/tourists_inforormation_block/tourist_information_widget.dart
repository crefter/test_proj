import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:test_proj/feature/booking/widget/form_text_field_widget.dart';

// TODO: last block and validate fields

class TouristInformationWidget extends StatelessWidget {
  const TouristInformationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 17),
        FormTextFieldWidget(
          label: 'Имя',
          hintText: 'Иван',
          validateOnSaved: (value) {
            return value.isNotEmpty;
          },
        ),
        const SizedBox(height: 8),
        FormTextFieldWidget(
          label: 'Фамилия',
          hintText: 'Иванов',
          validateOnSaved: (value) {
            return value.isNotEmpty;
          },
        ),
        const SizedBox(height: 8),
        FormTextFieldWidget(
          label: 'Дата рождения',
          hintText: '01.01.1995',
          formatter: MaskTextInputFormatter(
            mask: "##.##.####",
            filter: {
              "#": RegExp(r'[0-9]'),
            },
          ),
          validateOnSaved: (value) {
            return value.isNotEmpty;
          },
        ),
        const SizedBox(height: 8),
        FormTextFieldWidget(
          label: 'Гражданство',
          hintText: 'Россия',
          validateOnSaved: (value) {
            return value.isNotEmpty;
          },
        ),
        const SizedBox(height: 8),
        FormTextFieldWidget(
          label: 'Номер загранпаспорта',
          hintText: '12 3456789',
          formatter: MaskTextInputFormatter(
            mask: "## #######",
            filter: {
              "#": RegExp(r'[0-9]'),
            },
          ),
          validateOnSaved: (value) {
            return value.isNotEmpty;
          },
        ),
        const SizedBox(height: 8),
        FormTextFieldWidget(
          label: 'Срок действия загранпаспорта',
          hintText: '01.01.2025',
          formatter: MaskTextInputFormatter(
            mask: "##.##.####",
            filter: {
              "#": RegExp(r'[0-9]'),
            },
          ),
          validateOnSaved: (value) {
            return value.isNotEmpty;
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
