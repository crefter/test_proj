import 'package:flutter/material.dart';
import 'package:test_proj/core/extensions/button_theme_ext.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.059,
      child: ElevatedButton(
        style: Theme.of(context).buttonTheme.button,
        onPressed: onTap,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.buttonText,
        ),
      ),
    );
  }
}
