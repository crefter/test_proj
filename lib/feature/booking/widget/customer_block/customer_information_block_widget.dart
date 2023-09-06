import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:test_proj/core/extensions/string_ext.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';
import 'package:test_proj/core/widgets/card_widget.dart';
import 'package:test_proj/feature/booking/widget/form_text_field_widget.dart';

class CustomerInformationBlockWidget extends StatefulWidget {
  const CustomerInformationBlockWidget({Key? key}) : super(key: key);

  @override
  State<CustomerInformationBlockWidget> createState() =>
      _CustomerInformationBlockWidgetState();
}

class _CustomerInformationBlockWidgetState
    extends State<CustomerInformationBlockWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return CardWidget(
      hasBorder: false,
      isRounded: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Информация о покупателе',
              style: textTheme.header,
            ),
            const SizedBox(height: 20),
            FormTextFieldWidget(
              key: const ValueKey('phone'),
              label: 'Номер телефона',
              formatter: MaskTextInputFormatter(
                mask: '+7 (***) ***-**-**',
                filter: {
                  "*": RegExp(r'[0-9]'),
                },
              ),
              hintText: '+7 (951) 555-99-00',
              validateOnTapOutside: (value) {
                return value.length == 18;
              },
              validateOnSaved: (value) {
                return value.length == 18;
              },
            ),
            const SizedBox(height: 8),
            FormTextFieldWidget(
              key: const ValueKey('email'),
              label: 'Почта',
              hintText: 'example@gmail.com',
              validateOnTapOutside: (value) {
                return value.match;
              },
              validateOnSaved: (value) {
                return value.match;
              },
            ),
            const SizedBox(height: 8),
            Text(
              'Эти данные никому не передаются. '
              'После оплаты мы вышлим чек на '
              'указанный вами номер и почту',
              style: textTheme.customerWarning,
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
