import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';
import 'package:test_proj/feature/booking/bloc/tourists_validate_bloc.dart';

class FormTextFieldWidget extends StatefulWidget {
  const FormTextFieldWidget({
    super.key,
    required this.label,
    required this.hintText,
    this.validateOnTapOutside,
    this.formatter,
    this.validateOnSaved,
  });

  final String label;
  final String? hintText;
  final TextInputFormatter? formatter;
  final bool Function(String)? validateOnTapOutside;
  final bool Function(String)? validateOnSaved;

  @override
  State<FormTextFieldWidget> createState() => _FormTextFieldWidgetState();
}

class _FormTextFieldWidgetState extends State<FormTextFieldWidget> {
  late final TextEditingController _controller;
  bool isError = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Focus(
      child: Container(
        padding: const EdgeInsets.only(
          left: 16.0,
        ),
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: ShapeDecoration(
          color: isError ? const Color(0x26EB5757) : const Color(0xFFF6F6F9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
        ),
        child: Builder(
          builder: (context) {
            return TextFormField(
              onTapOutside: (_) {
                if (widget.validateOnTapOutside == null) {
                  return;
                }
                final value = _controller.text;
                if (widget.validateOnTapOutside!(value)) {
                  isError = false;
                } else {
                  isError = true;
                }
                if (!isError) Focus.of(context).unfocus();
                setState(() {});
              },
              onSaved: (newValue) {
                if (widget.validateOnSaved == null || newValue == null) {
                  return;
                }
                if (widget.validateOnSaved!(newValue)) {
                  isError = false;
                } else {
                  isError = true;
                  context.read<TouristsValidateBloc>().add(
                        TouristsValidateAdd(),
                      );
                }
                setState(() {});
              },
              controller: _controller,
              style: textTheme.textFieldText,
              decoration: InputDecoration(
                labelText: widget.label,
                labelStyle: textTheme.labelTextField,
                border: InputBorder.none,
                hintText: widget.hintText,
              ),
              inputFormatters:
                  widget.formatter != null ? [widget.formatter!] : null,
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
